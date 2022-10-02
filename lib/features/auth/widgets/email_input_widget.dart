import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/login/bloc/login_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/widgets/login_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_bloc_builder.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({Key? key, this.isLogin}) : super(key: key);

  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    if (isLogin == true) {
      return LoginBlocBuilder(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return TextFieldCustom(
            key: const Key('loginForm_emailInput_textField'),
            onValueChanged: (email) =>
                context.addLoginEvent(LoginEvent.emailChanged(email)),
            keyboardType: TextInputType.emailAddress,
            errorText: state.email.invalid
                ? state.email.error?.validationMessage
                : null,
            hintText: "abc@email.com",
            margins: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultHorizontalMargin,
            ),
            prefixIcon: Icons.mail, //todo add the correct icon here
          );
        },
      );
    } else {
      return SignUpBlocBuilder(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) => TextFieldCustom(
          hintText: "abc@email.com",
          key: const Key('signUpForm_emailInput_textField'),
          onValueChanged: (email) =>
              context.addSignUpEvent(SignUpEvent.emailChanged(email)),
          keyboardType: TextInputType.emailAddress,
          errorText:
              state.email.invalid ? state.email.error?.validationMessage : null,

          margins: EdgeInsets.only(
            bottom: 19.h,
          ),
          prefixIcon: Icons.mail, //todo add the correct icon here
        ),
      );
    }
  }
}
