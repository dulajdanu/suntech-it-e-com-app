import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/gradient_button_custom.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/text_button_custom.dart';

class EditProfileAndLogoutWidget extends StatelessWidget {
  const EditProfileAndLogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        GradientButtonCustom(
          btnText: "Edit Profile",
          callback: () {
            context.read<EditProfileCubit>().toggleEditProfile();
          },
          margin: EdgeInsets.only(
            bottom: 36.h,
          ),
        ),
        TextButtonCustom(
            btnText: 'Logout',
            callback: () {
              context.addAppEvent(const AppEvent.logoutRequested());
            }),
      ],
    );
  }
}
