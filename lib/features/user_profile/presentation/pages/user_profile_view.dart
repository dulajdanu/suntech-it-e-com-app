import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_widget.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile_and_logout_widget.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/user_details_widget.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProfileCubit, EditProfileState>(
      listenWhen: (previous, current) =>
          previous.editFormStatus != current.editFormStatus,
      listener: (context, state) {
        if (state.editFormStatus == FormzStatus.submissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Profile data edited successfully'),
              ),
            );

          context.addAppEvent(const AppEvent.getToken());
        } else if (state.editFormStatus == FormzStatus.submissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('An error occurred while updating profile data'),
              ),
            );
        }
      },
      child: SingleChildScrollView(
        child: Column(
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
            BlocBuilder<EditProfileCubit, EditProfileState>(
              builder: (context, state) {
                if (state.editProfile) {
                  return const EditProfileWidget();
                } else {
                  return const EditProfileAndLogoutWidget();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
