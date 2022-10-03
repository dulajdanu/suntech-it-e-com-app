import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';
import 'package:suntech_it_e_com_app/core/models/user/user_model.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository.dart';

class LoginRepsitoryImpl implements LoginRepository {
  final LoginDatasource _loginDatasource;
  LoginRepsitoryImpl({required LoginDatasource loginDatasource})
      : _loginDatasource = loginDatasource;
  @override
  RvfEither<Tuple2<ResponseModel, User>> signInUsingEmailPassword(
      Email email, Password password, bool? rememberUser) async {
    try {
      final result = await _loginDatasource.signInUsingEmailPassword(
          email, password, rememberUser);

      return right(result);
    } on LoginException catch (e) {
      return left(Failure.login(e.message));
    }
  }
}
