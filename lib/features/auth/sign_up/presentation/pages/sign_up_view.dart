import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/pages/login_page.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/confirm_password_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/full_name_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_button_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/email_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/password_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/social_media_sign_in_button_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignUpBloc, SignUpState>(
          listenWhen: (previous, current) =>
              previous.signupFormStatus != current.signupFormStatus,
          listener: (context, state) {
            if (state.signupFormStatus == FormzStatus.submissionSuccess) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(
                        state.responseModel?.title ?? "User account created"),
                  ),
                );

              // Navigator.pop(context);

              context.addAppEvent(const AppEvent.getToken());
            } else if (state.signupFormStatus ==
                FormzStatus.submissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.submissionFailureMessage ??
                        "Error occurred while creating account"),
                  ),
                );
            }
          },
        ),
        BlocListener<AppBloc, AppState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == AppStatus.authenticated) {
              Navigator.pop(context);
            }
          },
        ),
      ],
      child: AppBackgroundCustom(
          bodyWidget: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultHorizontalMargin,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextCustomWidget(
                text: 'Sign up',
                textStyle: AppConstants.headingTextStyle,
                marginTop: 38.58.h,
                marginBottom: 42.h,
              ),
              const FullNameInputWidget(),
              const EmailInputWidget(),
              const PasswordInputWidget(),
              const ConfirmPasswordInputWidget(),
              const SignUpButtonWidget(),
              TextCustomWidget(
                text: "OR",
                marginTop: 36.h,
                marginBottom: 10.h,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: const Color(0xff9D9898),
                ),
                containerAlignment: Alignment.center,
              ),
              SocialMediaSignInButtonWidget(
                buttonType: ButtonType.google,
                callback: () {},
                margin: EdgeInsets.symmetric(
                  horizontal: 23.w,
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              SocialMediaSignInButtonWidget(
                buttonType: ButtonType.facebook,
                callback: () {},
                margin: EdgeInsets.symmetric(
                  horizontal: 23.w,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20.h,
                  bottom: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustomWidget(
                      text: 'Already have an account? ',
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: TextCustomWidget(
                        text: 'Sign in ',
                        textStyle: TextStyle(
                          color: AppConstants.mainBlueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
