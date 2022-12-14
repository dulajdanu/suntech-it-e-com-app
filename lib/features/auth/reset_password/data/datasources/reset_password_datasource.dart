import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';

abstract class ResetPasswordDatasource {
  Rvf<Tuple2<ResponseModel, String>> resetPassword(Email email);

  Rvf<String> confirmPasswordReset(String otp, String state);
}
