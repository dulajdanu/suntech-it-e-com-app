import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.h),
          gradient: LinearGradient(
            colors: AppConstants.gradientColors,
          )),
      child: Row(
        children: [
          Expanded(
            child: Container(
              // color: Colors.green,
              child: Column(
                children: [
                  SizedBox(height: 19.h),
                  TextCustomWidget(
                    text: "50% Off",
                    textStyle: GoogleFonts.roboto(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    containerAlignment: Alignment.center,
                    textAlign: TextAlign.left,
                  ),
                  TextCustomWidget(
                    marginTop: 10.h,
                    marginBottom: 29.h,
                    text: "wireless\nHeadphones",
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    containerAlignment: Alignment.center,
                  ),
                  Container(
                    height: 32.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                            6.h,
                          ))),
                      onPressed: () {},
                      child: TextCustomWidget(
                        text: "Explore now",
                        textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff5C9AC5)),
                        containerAlignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.yellow,
              alignment: Alignment.center,
              child: Image.asset("assets/images/banner_w.png"),
            ),
          ),
        ],
      ),
    );
  }
}
