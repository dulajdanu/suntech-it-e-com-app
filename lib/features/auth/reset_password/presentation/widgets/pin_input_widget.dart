import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';

class PinInputWidget extends StatelessWidget {
  const PinInputWidget({Key? key}) : super(key: key);
  //todo in this widget change the direction of the cursor like in the design

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.w,
      height: 61.h,
      child: TextFormField(
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.textFieldBorderColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.mainBlueColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
