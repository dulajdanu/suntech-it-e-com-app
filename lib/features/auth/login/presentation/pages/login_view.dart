import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_background_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_field_custom.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/social_media_sign_in_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackgroundCustom(
      bodyWidget: Column(
        children: [
          TextCustomWidget(
            marginTop: 34.h,
            marginBottom: 58.h,
            text: "Sign in",
            textStyle: AppConstants.headingTextStyle,
            containerAlignment: Alignment.center,
          ),
          TextFieldCustom(
            margins: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultHorizontalMargin,
            ),
            hintText: "abc@gmail.com",
            prefixIcon: Icons.mail,
          ),
          SizedBox(
            height: 19.h,
          ),
          TextFieldCustom(
            margins: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultHorizontalMargin,
            ),
            hintText: "Your password",
            prefixIcon: Icons.lock,
            obscureText: true,
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
                Switch(
                  //todo add the correct widget here like in the design
                  // This bool value toggles the switch.
                  value: false,
                  activeColor: Colors.red,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    // setState(() {
                    //   light = value;
                    // });
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
                  child: TextCustomWidget(
                    containerAlignment: Alignment.centerRight,
                    text: 'Forgot Password?',
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppConstants.inputTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          //
          AuthActionButtonWidget(
            buttonText: "Sign in",
            callback: () {},
          ),
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
    );
  }
}
