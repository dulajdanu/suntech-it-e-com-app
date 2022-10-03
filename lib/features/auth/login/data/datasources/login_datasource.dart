import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/core/models/user/user_model.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';

abstract class LoginDatasource {
  Rvf<Tuple2<ResponseModel, User>> signInUsingEmailPassword(
      Email email, Password password, bool? rememberUser);
}
