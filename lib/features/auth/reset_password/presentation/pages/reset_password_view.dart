import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_background_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_field_custom.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';
import 'package:suntech_it_e_com_app/features/main_page/presentation/pages/main_page.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackgroundCustom(
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
            text: 'Please enter your email address to request a password reset',
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            marginBottom: 57.9.h,
          ),
          TextFieldCustom(
            hintText: "abc@email.com",
            prefixIcon: Icons.mail,
            margins: EdgeInsets.only(
              bottom: 74.h,
            ),
          ),
          AuthActionButtonWidget(
            buttonText: 'Send',
            callback: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ));
            },
            margin: EdgeInsets.symmetric(
              horizontal: 23.w,
            ),
          ),
        ],
      ),
    ));
  }
}
