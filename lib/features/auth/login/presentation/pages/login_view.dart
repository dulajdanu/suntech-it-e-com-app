import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/login/bloc/login_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/widgets/login_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/widgets/login_button_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/pages/reset_password_page.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/email_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/password_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/social_media_sign_in_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) =>
          previous.loginFormStatus != current.loginFormStatus,
      listener: (context, state) {
        if (state.loginFormStatus == FormzStatus.submissionSuccess) {
          context.addAppEvent(const AppEvent.getToken());
        }
      },
      child: AppBackgroundCustom(
        bodyWidget: SingleChildScrollView(
          child: Column(
            children: [
              TextCustomWidget(
                marginTop: 34.h,
                marginBottom: 58.h,
                text: "Sign in",
                textStyle: AppConstants.headingTextStyle,
                containerAlignment: Alignment.center,
              ),
              const EmailInputWidget(
                isLogin: true,
              ),
              SizedBox(
                height: 19.h,
              ),
              const PasswordInputWidget(
                isLogin: true,
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                height: 23.h,
                // color: Colors.redAccent,
                margin: EdgeInsets.symmetric(
                    horizontal: AppConstants.defaultHorizontalMargin),
                child: Row(
                  children: [
                    LoginBlocBuilder(
                      builder: (context, state) {
                        return Switch(
                          //todo add the correct widget here like in the design
                          value: state.rememberUser,
                          activeColor: AppConstants.mainBlueColor,
                          onChanged: (bool value) {
                            context
                                .addLoginEvent(const LoginEvent.rememberUser());
                          },
                        );
                      },
                    ),
                    TextCustomWidget(
                      text: 'Remember me',
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppConstants.inputTextColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          // color: Colors.green,
                          // child: ,
                          ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordPage(),
                            ));
                      },
                      child: TextCustomWidget(
                        containerAlignment: Alignment.centerRight,
                        text: 'Forgot Password?',
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppConstants.inputTextColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              //
              const LoginButtonWidget(),
              TextCustomWidget(
                text: "OR",
                marginTop: 34.h,
                marginBottom: 10.h,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: const Color(0xff9D9898),
                ),
                containerAlignment: Alignment.center,
              ),
              SocialMediaSignInButtonWidget(
                callback: () {},
                buttonType: ButtonType.google,
              ),
              SizedBox(
                height: 17.h,
              ),
              SocialMediaSignInButtonWidget(
                buttonType: ButtonType.facebook,
                callback: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultHorizontalMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustomWidget(
                      text: 'Don\'t have an account? ',
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
                              builder: (context) => const SignUpPage(),
                            ));
                      },
                      child: TextCustomWidget(
                        text: 'Sign up ',
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
      ),
    );
  }
}
