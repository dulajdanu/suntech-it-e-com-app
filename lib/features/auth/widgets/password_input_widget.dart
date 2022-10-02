import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/login/bloc/login_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/widgets/login_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_bloc_builder.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({
    Key? key,
    this.isLogin,
  }) : super(key: key);
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    if (isLogin == true) {
      return LoginBlocBuilder(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) => TextFieldCustom(
          margins: EdgeInsets.symmetric(
            horizontal: AppConstants.defaultHorizontalMargin,
          ),
          hintText: "Your password",
          prefixIcon: Icons.lock,
          obscureText: true,
          key: const Key('loginForm_passwordInput_textField'),
          onValueChanged: (password) =>
              context.addLoginEvent(LoginEvent.passwordChanged(password)),
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye,
              size: 26.0,
            ),
          ),
          errorText: state.password.invalid
              ? state.password.error?.validationMessage
              : null,
        ),
      );
    } else {
      return SignUpBlocBuilder(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.hidePassword != current.hidePassword,
        builder: (context, state) => TextFieldCustom(
          hintText: "Your password",
          prefixIcon: Icons.lock,
          obscureText: state.hidePassword,
          margins: EdgeInsets.only(
            bottom: 19.h,
          ),
          key: const Key('loginForm_passwordInput_textField'),
          onValueChanged: (password) =>
              context.addSignUpEvent(SignUpEvent.passwordChanged(password)),
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: IconButton(
            onPressed: () {
              context
                  .addSignUpEvent(const SignUpEvent.changePasswordVisibility());
            },
            icon: const Icon(
              Icons.remove_red_eye,
              size: 26.0,
            ),
          ),
          errorText: state.password.invalid
              ? state.password.error?.validationMessage
              : null,
        ),
      );
    }
  }
}
