import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/data/datasources/user_data_datasource.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';

class UserDataRepositoryImpl implements UserDataRepository {
  final UserDataDataSource _userDataDataSource;
  UserDataRepositoryImpl({required UserDataDataSource userDataDataSource})
      : _userDataDataSource = userDataDataSource;
  @override
  RvfEitherUnit updatePassword(Password password, String token) async {
    try {
      final result = await _userDataDataSource.updatePassword(password, token);

      return right(result);
    } on UpdateProfileException catch (e) {
      return left(Failure.updateProfile(e.message));
    }
  }
}
