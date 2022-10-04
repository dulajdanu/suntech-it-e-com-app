import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/user_details_widget.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 81.h,
            bottom: 14.h,
          ),
          child: Center(
            child: CircleAvatar(
              radius: 40.h,
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
        ),
        const UserDetailsWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              color: Colors.white,
              size: 4.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            Icon(
              Icons.circle,
              color: Colors.white,
              size: 6.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            Icon(
              Icons.circle,
              color: Colors.white,
              size: 4.h,
            ),
          ],
        ),
        SizedBox(
          height: 51.h,
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 36.h,
          ),
          height: 56.h,
          width: 189.w,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff33A6DF),
                Color(0xff437ED6),
              ],
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
          alignment: Alignment.center,
          child: TextCustomWidget(
            text: "Edit Profile",
            containerAlignment: Alignment.center,
            textStyle: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("logout");
            context.addAppEvent(const AppEvent.logoutRequested());
          },
          child: Container(
            // color: Colors.black,
            alignment: Alignment.center,
            width: 149.w,
            child: TextCustomWidget(
              text: "Logout",
              containerAlignment: Alignment.center,
              textStyle: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
