import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/new_password_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/new_password_save_button_widget.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          previous.newPasswordFormStatus != current.newPasswordFormStatus,
      listener: (context, state) {
        if (state.newPasswordFormStatus == FormzStatus.submissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Password updated successfully'),
              ),
            );
          Navigator.of(context).popUntil((route) => route.isFirst);

          context.addAppEvent(const AppEvent.getToken());
        } else if (state.newPasswordFormStatus ==
            FormzStatus.submissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text(ErrorMessages.profileUpdateErrorMessage),
              ),
            );
        }
      },
      child: AppBackgroundCustom(
          bodyWidget: Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultHorizontalMargin,
        ),
        child: Column(
          children: [
            TextCustomWidget(
              text: 'Add New Password',
              marginTop: 37.58.h,
              marginBottom: 33.h,
              textStyle: AppConstants.headingTextStyle,
            ),
            BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
              buildWhen: (previous, current) => previous.email != current.email,
              builder: (context, state) {
                return TextCustomWidget(
                  text: "Enter your new password for the ${state.email.value}",
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  marginBottom: 56.12.h,
                );
              },
            ),

            SizedBox(height: 48.h),
            //
            const NewPasswordInputWidget(),
            const NewPasswordContinueButtonWidget(),
          ],
        ),
      )),
    );
  }
}
