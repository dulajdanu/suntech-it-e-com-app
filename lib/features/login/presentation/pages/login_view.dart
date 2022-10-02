import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_bar_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_field_custom.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: const AppBarCustom(),
      body: Column(
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
        ],
      ),
    );
  }
}
