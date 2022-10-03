import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource.dart';
import 'package:http/http.dart' as http;

class LoginDatasourceImpl implements LoginDatasource {
  final FlutterSecureStorage _flutterSecureStorage;
  LoginDatasourceImpl({required FlutterSecureStorage flutterSecureStorage})
      : _flutterSecureStorage = flutterSecureStorage;
  @override
  Rvf<ResponseModel> signInUsingEmailPassword(
      Email email, Password password) async {
    try {
      final response = await http.post(
          Uri.parse('https://qa.tellnshare.co/demo/api/v1/user/authenticate'),
          body: {
            "username": email.value,
            "password": password.value,
          });

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final token = jsonResponse['body']['token'];
        Logger().wtf(jsonResponse);

        //store the token in secure storage
        _flutterSecureStorage.write(key: 'token', value: token);

        return ResponseModel.fromJson(jsonResponse);
      } else {
        Logger().w(jsonResponse);
        throw Exceptions.signUpException(
          jsonResponse['message'], // get the error message from the response
        );
      }
    } on LoginException catch (e) {
      throw Exceptions.loginException(e.message);
    } catch (e) {
      throw const LoginException("An unexpected errored . Please try again");
    }
  }
}
