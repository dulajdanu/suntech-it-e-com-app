import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/core/parsers/custom_jwt_parser.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/name/name.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:http/http.dart' as http;

class SignUpDatasourceImpl implements SignUpDatasource {
  final FlutterSecureStorage _flutterSecureStorage;

  SignUpDatasourceImpl({required FlutterSecureStorage flutterSecureStorage})
      : _flutterSecureStorage = flutterSecureStorage;
  @override
  Rvf<ResponseModel> signUpNewUser(
      Name fullName, Email email, Password password) async {
    try {
      final response = await http.post(
          Uri.parse('https://qa.tellnshare.co/demo/api/v1/user/register'),
          body: {
            "fullName": fullName.value,
            "email": email.value,
            "password": password.value,
          });

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final token = jsonResponse['body']['token'];
        // Logger().wtf(token);

        if (token != null) {
          Logger().wtf(parseJwt(token));

          _flutterSecureStorage.write(key: 'token', value: token);

          return ResponseModel.fromJson(jsonResponse);
        } else {
          throw const Exceptions.signUpException(
              ErrorMessages.unexpectedErrorMessage);
        }
      } else {
        Logger().w(jsonResponse);
        throw Exceptions.signUpException(
          jsonResponse['message'], // get the error message from the response
        );
      }
    } on SignUpException catch (e) {
      throw Exceptions.signUpException(e.message);
    } catch (e) {
      throw const Exceptions.signUpException(ErrorMessages.signUpErrorMessage);
    }
  }
}
