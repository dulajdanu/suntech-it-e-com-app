import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/widgets/login_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginBlocBuilder(
      buildWhen: (previous, current) =>
          previous.loginFormStatus != current.loginFormStatus,
      builder: (context, state) => AuthActionButtonWidget(
        isDisabled: state.loginFormStatus != FormzStatus.valid,
        buttonText: "Sign in",
        callback: () {},
      ),
    );
  }
}
