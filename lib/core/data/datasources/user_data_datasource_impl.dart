import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:suntech_it_e_com_app/core/data/datasources/user_data_datasource.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/name/name.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:http/http.dart' as http;

class UserDataDataSourceImpl implements UserDataDataSource {
  final FlutterSecureStorage _flutterSecureStorage;
  UserDataDataSourceImpl({required FlutterSecureStorage flutterSecureStorage})
      : _flutterSecureStorage = flutterSecureStorage;

  @override
  RvfUnit updatePassword(Password password, String token) async {
    try {
      final response = await http.put(
        Uri.parse('https://qa.tellnshare.co/demo/api/v1/user/update'),
        body: {
          "password": password.value,
        },
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        //save the token in storage
        _flutterSecureStorage.write(key: 'token', value: token);
        return unit;
      } else {
        throw Exceptions.updateProfile(
            jsonResponse['message'] ?? ErrorMessages.profileUpdateErrorMessage);
      }
    } on UpdateProfileException catch (e) {
      throw Exceptions.updateProfile(
        e.message,
      );
    } catch (e) {
      throw const Exceptions.updateProfile(
          ErrorMessages.profileUpdateErrorMessage);
    }
  }

  @override
  RvfUnit updateProfile(Name fullName, Email email) async {
    try {
      final token = await _flutterSecureStorage.read(
        key: 'token',
      );

      final response = await http.put(
        Uri.parse('https://qa.tellnshare.co/demo/api/v1/user/update'),
        body: {"fullName": fullName.value, "email": email.value},
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        //save the token in storage
        return unit;
      } else {
        throw Exceptions.updateProfile(
            jsonResponse['message'] ?? ErrorMessages.profileUpdateErrorMessage);
      }
    } on UpdateProfileException catch (e) {
      throw Exceptions.updateProfile(
        e.message,
      );
    } catch (e) {
      throw const Exceptions.updateProfile(
          ErrorMessages.profileUpdateErrorMessage);
    }
  }
}
