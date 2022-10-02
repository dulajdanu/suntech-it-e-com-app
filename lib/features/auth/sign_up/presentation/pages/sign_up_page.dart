import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/service_locators/service_locator.dart';
import 'package:suntech_it_e_com_app/features//auth/sign_up/presentation/pages/sign_up_view.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/data/repositories/sign_up_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpBloc(signUpRepository: serviceLocator<SignUpRepository>()),
      child: const SignUpView(),
    );
  }
}
