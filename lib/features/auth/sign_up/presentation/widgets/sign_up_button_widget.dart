import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(
      buildWhen: (previous, current) =>
          previous.signupFormStatus != current.signupFormStatus,
      builder: (context, state) => AuthActionButtonWidget(
        isDisabled: state.signupFormStatus != FormzStatus.valid,
        buttonText: 'Sign up',
        callback: () {
          context.addSignUpEvent(const SignUpEvent.submit());
        },
        margin: EdgeInsets.symmetric(
          horizontal: 23.w,
        ),
      ),
    );
  }
}
