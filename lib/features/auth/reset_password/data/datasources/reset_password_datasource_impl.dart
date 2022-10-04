import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/datasources/reset_password_datasource.dart';
import 'package:http/http.dart' as http;

class ResetPasswordDatasourceImpl implements ResetPasswordDatasource {
  @override
  Rvf<Tuple2<ResponseModel, String>> resetPassword(Email email) async {
    try {
      final response = await http.post(
          Uri.parse(
              'https://qa.tellnshare.co/demo/api/v1/user/password-reset/initiate'),
          body: {
            "email": email.value,
          });

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final state = jsonResponse['body']['state'];

        if (state != null) {
          return tuple2(ResponseModel.fromJson(jsonResponse), state);
        } else {
          throw const Exceptions.resetPassword(
              ErrorMessages.unexpectedErrorMessage);
        }
      } else {
        Logger().w(jsonResponse);
        throw Exceptions.resetPassword(
          jsonResponse['message'], // get the error message from the response
        );
      }
    } on ResetPasswordException catch (e) {
      throw Exceptions.resetPassword(e.message);
    } catch (e) {
      throw const Exceptions.resetPassword(
          ErrorMessages.unexpectedErrorMessage);
    }
  }

  @override
  Rvf<String> confirmPasswordReset(String otp, String state) async {
    try {
      final response = await http.post(
          Uri.parse(
              'https://qa.tellnshare.co/demo/api/v1/user/password-reset/confirm'),
          body: {
            "otp": otp,
            "state": state,
          });

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final token = jsonResponse['body']['token'];

        if (token != null) {
          return token;
        } else {
          throw const Exceptions.resetPassword(
              ErrorMessages.verificationErrorMessage);
        }
      } else {
        Logger().w(jsonResponse);
        throw Exceptions.resetPassword(
          jsonResponse['message'] ??
              ErrorMessages
                  .verificationErrorMessage, // get the error message from the response
        );
      }
    } on ResetPasswordException catch (e) {
      throw Exceptions.resetPassword(e.message);
    } catch (e) {
      throw const Exceptions.resetPassword(
          ErrorMessages.unexpectedErrorMessage);
    }
  }
}
