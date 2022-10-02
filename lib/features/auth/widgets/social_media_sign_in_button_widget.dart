import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class SocialMediaSignInButtonWidget extends StatelessWidget {
  const SocialMediaSignInButtonWidget({
    Key? key,
    required this.buttonType,
    required this.callback,
    this.margin,
  }) : super(key: key);
  final VoidCallback callback;

  final ButtonType buttonType;

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      margin: margin ??
          EdgeInsets.symmetric(
            horizontal: 71.w,
          ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
          ),
        ),
        onPressed: callback,
        child: Container(
          height: 56.h,
          padding: EdgeInsets.symmetric(
            horizontal: 36.w,
            vertical: 15.h,
          ),
          child: Row(
            children: [
              Image.asset(buttonType == ButtonType.google
                  ? "assets/images/google_logo.png"
                  : "assets/images/facebook_logo.png"),
              SizedBox(
                width: 27.w,
              ),
              TextCustomWidget(
                text: buttonType == ButtonType.google
                    ? 'Login with Google'
                    : 'Login with Facebook',
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xff120D26),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ButtonType { google, facebook }
