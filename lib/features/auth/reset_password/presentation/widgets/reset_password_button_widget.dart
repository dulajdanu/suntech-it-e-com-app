import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';

class ResetPasswordButtonWidget extends StatelessWidget {
  const ResetPasswordButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResetPasswordBlocBuilder(
      buildWhen: (previous, current) =>
          previous.formStatus != current.formStatus,
      builder: (context, state) => AuthActionButtonWidget(
        isDisabled: state.formStatus != FormzStatus.valid,
        buttonText: 'Send',
        callback: () {
          context.read<ResetPasswordCubit>().sendVerificationToken();
        },
        margin: EdgeInsets.symmetric(
          horizontal: 23.w,
        ),
      ),
    );
  }
}
