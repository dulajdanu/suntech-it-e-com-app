import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            TextCustomWidget(
              text: state.userModel.fullName,
              containerAlignment: Alignment.center,
              textStyle: AppConstants.headingTextStyle,
              marginBottom: 14
                  .h, //todo create a common imports file and add screen tuil darts and other ones
            ),
            TextCustomWidget(
              text: state.userModel.email,
              containerAlignment: Alignment.center,
              textStyle: TextStyle(
                fontSize: 14.sp, //todo add this for the constants
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              marginBottom: 40.26.h,
            ),
          ],
        );
      },
    );
  }
}
