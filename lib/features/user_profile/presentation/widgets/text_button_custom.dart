import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    Key? key,
    required this.btnText,
    required this.callback,
  }) : super(key: key);
  final String btnText;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        // color: Colors.black,
        alignment: Alignment.center,
        width: 149.w,
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
    );
  }
}
