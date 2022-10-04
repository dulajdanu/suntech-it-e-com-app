import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/datasources/reset_password_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository.dart';

class ResetPasswordRepsitoryImpl implements ResetPasswordRepository {
  final ResetPasswordDatasource _resetPasswordDatasource;
  ResetPasswordRepsitoryImpl(
      {required ResetPasswordDatasource resetPasswordDatasource})
      : _resetPasswordDatasource = resetPasswordDatasource;
  @override
  RvfEither<Tuple2<ResponseModel, String>> resetPassword(Email email) async {
    try {
      final result = await _resetPasswordDatasource.resetPassword(email);
      return right(result);
    } on ResetPasswordException catch (e) {
      return left(Failure.resetPassword(e.message));
    }
  }
}
