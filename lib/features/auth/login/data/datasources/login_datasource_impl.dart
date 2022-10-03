import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/models/user/user_model.dart';
import 'package:suntech_it_e_com_app/core/parsers/custom_jwt_parser.dart';
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
  Rvf<Tuple2<ResponseModel, User>> signInUsingEmailPassword(
      Email email, Password password, bool? rememberUser) async {
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
        // Logger().wtf(jsonResponse);
        //if remember user is true we save the token in flutter secure storage
        if (token != null) {
          if (rememberUser == true) {
            //store the token in secure storage
            _flutterSecureStorage.write(key: 'token', value: token);
          }

          final data = parseJwt(token);
          final user = User.empty
              .copyWith(fullName: data["fullName"], email: data["email"]);

          return tuple2(ResponseModel.fromJson(jsonResponse), user);
        } else {
          throw const Exceptions.loginException(
              ErrorMessages.unexpectedErrorMessage);
        }
      } else {
        Logger().w(jsonResponse);
        throw Exceptions.loginException(
          jsonResponse['message'], // get the error message from the response
        );
      }
    } on LoginException catch (e) {
      throw Exceptions.loginException(e.message);
    } catch (e) {
      throw const Exceptions.loginException(
          ErrorMessages.unexpectedErrorMessage);
    }
  }
}
