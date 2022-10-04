import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';

abstract class ResetPasswordRepository {
  ///As the result we get a response model and a string which is the state
  RvfEither<Tuple2<ResponseModel, String>> resetPassword(Email email);
}
