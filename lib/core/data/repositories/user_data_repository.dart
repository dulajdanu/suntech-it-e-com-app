import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';

abstract class UserDataRepository {
  RvfEitherUnit updatePassword(Password password, String token);

  RvfEitherUnit updateProfile(Name fullName, Email email);
}
