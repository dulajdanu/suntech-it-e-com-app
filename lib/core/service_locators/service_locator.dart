import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/datasources/login_datasource_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/datasources/sign_up_datasource_impl.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository_impl.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  ///Sign up
  //data source
  registerLazySingleton<SignUpDatasource>(SignUpDatasourceImpl());
  //repo
  registerLazySingleton<SignUpRepository>(SignUpRepsitoryImpl(
    signUpDatasource: serviceLocator(),
  ));

  ///Login

  registerLazySingleton<LoginDatasource>(LoginDatasourceImpl());

  registerLazySingleton<LoginRepository>(LoginRepsitoryImpl(
    loginDatasource: serviceLocator(),
  ));

  ///Flutter secure storage
  registerLazySingleton(const FlutterSecureStorage());
}

void registerLazySingleton<T extends Object>(T object) {
  return serviceLocator.registerLazySingleton<T>(() => object);
}
