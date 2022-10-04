import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:string_validator/string_validator.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';

class ResetPasswordContinueButtonWidget extends StatelessWidget {
  const ResetPasswordContinueButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResetPasswordBlocBuilder(
      buildWhen: (previous, current) =>
          previous.pinNumbers != current.pinNumbers,
      builder: (context, state) => AuthActionButtonWidget(
        isDisabled: !(state.pinNumbers.join().length == 4 &&
            isNumeric(state.pinNumbers.join())),
        buttonText: 'Continue',
        callback: () {
          context.read<ResetPasswordCubit>().sendVerificationToken();
        },
        margin: EdgeInsets.symmetric(
          horizontal: 23.w,
          vertical: 25.h,
        ),
      ),
    );
  }
}
