import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_background_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/features/auth/verification/presentation/widgets/pin_input_widget.dart';
import 'package:suntech_it_e_com_app/features/auth/widgets/auth_action_button_widget.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({Key? key}) : super(key: key);

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
            text: 'Verification',
            marginTop: 37.58.h,
            marginBottom: 33.h,
            textStyle: AppConstants.headingTextStyle,
          ),
          TextCustomWidget(
            text: "We’ve send you the verification code on abc@email.com",
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            marginBottom: 56.12.h,
          ),
          SizedBox(
            height: 61.h,
            // color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PinInputWidget(),
                PinInputWidget(),
                PinInputWidget(),
                PinInputWidget(),
              ],
            ),
          ),
          SizedBox(height: 48.h),
          AuthActionButtonWidget(
            buttonText: 'Continue',
            callback: () {},
            margin: EdgeInsets.symmetric(
              horizontal: 23.w,
              vertical: 25.h,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextCustomWidget(
                  text: 'Re-send code in ',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextCustomWidget(
                  text: '0:20 ',
                  textStyle: TextStyle(
                    color: AppConstants.mainBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
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
