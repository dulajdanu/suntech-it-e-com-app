import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_background_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_field_custom.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/pages/login_page.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/social_media_sign_in_button_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackgroundCustom(
        bodyWidget: Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultHorizontalMargin,
      ),
      child: Column(
        children: [
          TextCustomWidget(
            text: 'Sign up',
            textStyle: AppConstants.headingTextStyle,
            marginTop: 38.58.h,
            marginBottom: 42.h,
          ),
          TextFieldCustom(
            hintText: "Full Name",
            prefixIcon: FontAwesomeIcons.user, //todo add the correct icon here
            margins: EdgeInsets.only(
              bottom: 19.h,
            ),
          ),
          TextFieldCustom(
            hintText: "abc@email.com",
            margins: EdgeInsets.only(
              bottom: 19.h,
            ),
            prefixIcon: Icons.mail, //todo add the correct icon here
          ),
          TextFieldCustom(
            hintText: "Your password",
            prefixIcon: Icons.lock,
            obscureText: true,
            margins: EdgeInsets.only(
              bottom: 19.h,
            ),
          ),
          TextFieldCustom(
            hintText: "Confirm password",
            prefixIcon: Icons.lock,
            obscureText: true,
            margins: EdgeInsets.only(
              bottom: 40.h,
            ),
          ),
          AuthActionButtonWidget(
            buttonText: 'Sign up',
            callback: () {},
            margin: EdgeInsets.symmetric(
              horizontal: 23.w,
            ),
          ),
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
    ));
  }
}
