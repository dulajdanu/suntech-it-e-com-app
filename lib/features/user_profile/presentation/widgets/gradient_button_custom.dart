import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class GradientButtonCustom extends StatelessWidget {
  const GradientButtonCustom({
    Key? key,
    required this.callback,
    required this.btnText,
    this.isDisabled,
    this.margin,
  }) : super(key: key);

  final VoidCallback callback;
  final String btnText;
  final EdgeInsets? margin;
  final bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: isDisabled == true ? Colors.grey : null,
        gradient: isDisabled == true
            ? null
            : const LinearGradient(
                colors: [
                  Color(0xff33A6DF),
                  Color(0xff437ED6),
                ],
              ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.h),
            )),
        onPressed: isDisabled == true ? null : callback,
        child: Container(
          height: 56.h,
          width: 189.w,
          alignment: Alignment.center,
          child: TextCustomWidget(
            text: btnText,
            containerAlignment: Alignment.center,
            textStyle: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
