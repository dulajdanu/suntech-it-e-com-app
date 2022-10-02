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
          SizedBox(
            height: 22.h,
          ),
          Container(
            height: 23.h,
            color: Colors.redAccent,
            margin: EdgeInsets.symmetric(
                horizontal: AppConstants.defaultHorizontalMargin),
            child: Row(
              children: [
                Switch(
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
          Container(
            height: 58.h,
            width: 271.w,
            // color: Colors.greenAccent,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.h),
                ),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.w,
                  vertical: 14.h,
                ),
                height: 58.h,
                width: 271.w,
                child: Container(
                  // color: Colors.greenAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30.w,
                        // color: Colors.red,
                      ),
                      TextCustomWidget(
                        text: "Sign in".toUpperCase(),
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: AppConstants.buttonBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
