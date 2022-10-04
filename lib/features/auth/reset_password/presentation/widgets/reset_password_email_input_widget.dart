import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_bloc_builder.dart';

class ResetPasswordEmailInputWidget extends StatelessWidget {
  const ResetPasswordEmailInputWidget({Key? key, this.isLogin})
      : super(key: key);

  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    return ResetPasswordBlocBuilder(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFieldCustom(
          key: const Key('resetPwForm_emailInput_textField'),
          onValueChanged: (email) =>
              context.read<ResetPasswordCubit>().onEmailChanged(email),
          keyboardType: TextInputType.emailAddress,
          errorText:
              state.email.invalid ? state.email.error?.validationMessage : null,

          hintText: "abc@email.com",
          prefixIcon: Icons.mail,
          margins: EdgeInsets.only(
            bottom: 74.h,
          ),
          //todo add the correct icon here
        );
      },
    );
  }
}
