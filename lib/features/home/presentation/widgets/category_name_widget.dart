import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({
    Key? key,
    required this.btnText,
    this.isSelected = false,
  }) : super(key: key);
  final String btnText;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: EdgeInsets.only(
        right: 19.w,
      ),
      decoration: BoxDecoration(
        color: isSelected == false ? const Color(0xff262626) : null,
        gradient: isSelected == false
            ? null
            : LinearGradient(
                colors: AppConstants.gradientColors,
              ),
        borderRadius: BorderRadius.circular(
          8.h,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.h))),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 19.w),
          child: TextCustomWidget(text: btnText),
        ),
      ),
    );
  }
}
