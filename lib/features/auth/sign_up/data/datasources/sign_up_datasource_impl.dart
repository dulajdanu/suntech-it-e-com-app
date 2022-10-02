import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/name/name.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:http/http.dart' as http;

class SignUpDatasourceImpl implements SignUpDatasource {
  @override
  RvfUnit signUpNewUser(Name fullName, Email email, Password password) async {
    try {
      final response = await http.post(
          Uri.parse('https://qa.tellnshare.co:443/demo/api/v1/user/register'),
          body: {
            "fullName": fullName.value,
            "email": email.value,
            "password": password.value,
          });

      Logger().wtf(response.body);
      if (response.statusCode == 201) {
        return unit;
      } else {
        throw const Exceptions.signUpException(
            "An error occurred while creating new user");
      }
    } catch (e) {
      throw const Exceptions.signUpException(
          "An error occurred while creating new user");
    }
  }
}
