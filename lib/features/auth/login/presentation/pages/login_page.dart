import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/service_locators/service_locator.dart';
import 'package:suntech_it_e_com_app/features/auth/login/bloc/login_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/pages/login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(loginRepository: serviceLocator<LoginRepository>()),
      child: const LoginView(),
    );
  }
}
