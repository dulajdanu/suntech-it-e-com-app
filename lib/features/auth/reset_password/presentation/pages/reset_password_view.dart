import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/pages/verification_page.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_button_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/widgets/reset_password_email_input_widget.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contextM) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          previous.formStatus != current.formStatus,
      listener: (context, state) {
        if (state.formStatus == FormzStatus.submissionSuccess &&
            state.responseModel?.message != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.responseModel!.message),
              ),
            );

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: contextM.read<ResetPasswordCubit>(),
                  child: const VerificationPage(),
                ),
              ));
        } else if (state.formStatus == FormzStatus.submissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.submissionFailureMessage ??
                    ErrorMessages.unexpectedErrorMessage),
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
              marginTop: 38.58.h,
              marginBottom: 35.1.h,
              text: 'Reset Password',
              textStyle: AppConstants.headingTextStyle,
            ),
            TextCustomWidget(
              text:
                  'Please enter your email address to request a password reset',
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              marginBottom: 57.9.h,
            ),
            const ResetPasswordEmailInputWidget(),
            //
            const ResetPasswordButtonWidget(),
          ],
        ),
      )),
    );
  }
}
