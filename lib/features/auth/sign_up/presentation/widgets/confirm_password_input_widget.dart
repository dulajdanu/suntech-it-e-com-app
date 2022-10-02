import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_bloc_builder.dart';

class ConfirmPasswordInputWidget extends StatelessWidget {
  const ConfirmPasswordInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(
      // buildWhen: (previous, current) =>
      //     (previous.confirmPassword != current.confirmPassword),
      //     (previous.password != current.password ||
      //         previous.signupFormStatus != current.signupFormStatus ||
      //         previous.hideConfirmPassword != current.hideConfirmPassword),
      builder: (context, state) => TextFieldCustom(
        hintText: "Confirm password",
        prefixIcon: Icons.lock,
        margins: EdgeInsets.only(
          bottom: 40.h,
        ),
        key: const Key('signupForm_confirm_passwordInput_textField'),
        onValueChanged: (cPassword) => context
            .addSignUpEvent(SignUpEvent.confirmPasswordChanged(cPassword)),
        keyboardType: TextInputType.visiblePassword,
        suffixIcon: IconButton(
          onPressed: () {
            context.addSignUpEvent(const SignUpEvent.changePasswordVisibility(
                isConfirmPassowrd: true));
          },
          icon: const Icon(
            Icons.remove_red_eye,
            size: 26.0,
          ),
        ),
        errorText: state.confirmPassword.invalid
            ? state.confirmPassword.error?.validationMessage
            : null,
        obscureText: state.hideConfirmPassword,
      ),
    );
  }
}
