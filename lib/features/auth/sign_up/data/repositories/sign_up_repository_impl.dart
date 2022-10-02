import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/name/name.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository.dart';

class SignUpRepsitoryImpl extends SignUpRepository {
  final SignUpDatasource _signUpDatasource;
  SignUpRepsitoryImpl({required SignUpDatasource signUpDatasource})
      : _signUpDatasource = signUpDatasource;
  @override
  RvfEitherUnit signUpNewUser(
      Name fullName, Email email, Password password) async {
    try {
      final result =
          await _signUpDatasource.signUpNewUser(fullName, email, password);

      return right(result);
    } on SignUpException catch (e) {
      return left(Failure.login(e.message));
    }
  }
}
