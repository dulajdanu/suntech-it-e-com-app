import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_bloc_builder.dart';

class NewPasswordInputWidget extends StatelessWidget {
  const NewPasswordInputWidget({
    Key? key,
    this.isLogin,
  }) : super(key: key);
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    return ResetPasswordBlocBuilder(
      buildWhen: (previous, current) =>
          previous.newPassword != current.newPassword,
      builder: (context, state) => TextFieldCustom(
        margins: EdgeInsets.symmetric(
          horizontal: 23.w,
        ),
        hintText: "Your new password",
        prefixIcon: Icons.lock,
        obscureText: true,
        key: const Key('password_reset_Form_passwordInput_textField'),
        onValueChanged: (password) =>
            context.read<ResetPasswordCubit>().onNewPasswordChanged(password),
        keyboardType: TextInputType.visiblePassword,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove_red_eye,
            size: 26.0,
          ),
        ),
        errorText: state.newPassword.invalid
            ? state.newPassword.error?.validationMessage
            : null,
      ),
    );
  }
}
