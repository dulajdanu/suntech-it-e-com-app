import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_background_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_bar_custom.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/text_custom.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackgroundCustom(
        appBar: AppBarCustom(
          leadingWidget: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          trailingWidget: Padding(
            padding:
                EdgeInsets.only(right: AppConstants.homePageHorizontalMargin),
            child: const Icon(Icons.notifications_outlined),
          ),
        ),
        bodyWidget: Column(
          children: [
            TextCustomWidget(
              text: 'Discover Your Best ',
              textStyle: AppConstants
                  .headingTextStyle, //todo add the correct fontWeight here
              marginLeft: AppConstants.homePageHorizontalMargin,
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.homePageHorizontalMargin),
              child: Card(
                elevation: 5,
                color: const Color(0xff262626),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffACACAC),
                    ),
                    hintText: "Search Headphones",
                    hintStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffACACAC),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}