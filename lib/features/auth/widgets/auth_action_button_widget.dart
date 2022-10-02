import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

///This button is used in the sign in and signup pages
class AuthActionButtonWidget extends StatelessWidget {
  const AuthActionButtonWidget({
    Key? key,
    required this.buttonText,
    required this.callback,
    this.margin,
    this.isDisabled,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback callback;

  final EdgeInsets? margin;

  final bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.symmetric(
            horizontal: 71.w,
          ),
      height: 58.h,
      // color: Colors.greenAccent,
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.h),
          ),
          padding: EdgeInsets.zero,
          onSurface: Colors.lightBlue,
        ),
        onPressed: isDisabled == true ? null : callback,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 14.h,
          ),
          height: 58.h,
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
                  text: buttonText.toUpperCase(),
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
                    color: AppConstants.mainBlueColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
