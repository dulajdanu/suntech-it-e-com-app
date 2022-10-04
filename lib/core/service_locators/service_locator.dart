import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:suntech_it_e_com_app/core/data/datasources/user_data_datasource.dart';
import 'package:suntech_it_e_com_app/core/data/datasources/user_data_datasource_impl.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/datasources/reset_password_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/datasources/reset_password_datasource_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository_impl.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  ///Flutter secure storage
  registerLazySingleton(const FlutterSecureStorage());

  ///user details
  ///data source
  registerLazySingleton<UserDataDataSource>(
      UserDataDataSourceImpl(flutterSecureStorage: serviceLocator()));

  ///Repo
  registerLazySingleton<UserDataRepository>(
    UserDataRepositoryImpl(
      userDataDataSource: serviceLocator(),
    ),
  );

  ///Sign up
  //data source
  registerLazySingleton<SignUpDatasource>(SignUpDatasourceImpl(
    flutterSecureStorage: serviceLocator<FlutterSecureStorage>(),
  ));
  //repo
  registerLazySingleton<SignUpRepository>(SignUpRepsitoryImpl(
    signUpDatasource: serviceLocator(),
  ));

  ///Login

  registerLazySingleton<LoginDatasource>(LoginDatasourceImpl(
    flutterSecureStorage: serviceLocator(),
  ));

  registerLazySingleton<LoginRepository>(LoginRepsitoryImpl(
    loginDatasource: serviceLocator(),
  ));

  //Reset password
  //data source
  registerLazySingleton<ResetPasswordDatasource>(ResetPasswordDatasourceImpl());
  //repo
  registerLazySingleton<ResetPasswordRepository>(ResetPasswordRepsitoryImpl(
    resetPasswordDatasource: serviceLocator(),
  ));
}

void registerLazySingleton<T extends Object>(T object) {
  return serviceLocator.registerLazySingleton<T>(() => object);
}
