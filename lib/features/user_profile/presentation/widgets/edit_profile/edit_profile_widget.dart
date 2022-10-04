import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_bloc_builder.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_email_input_widget.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_full_name_input_widget.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/gradient_button_custom.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/text_button_custom.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EditProfileFullNameInputWidget(),
        SizedBox(
          height: 30.h,
        ),
        const EditProfileEmailInputWidget(),
        SizedBox(
          height: 87.h,
        ),
        EditProfileBlocBuilder(
          buildWhen: (previous, current) =>
              previous.editFormStatus != current.editFormStatus,
          builder: (context, state) {
            return GradientButtonCustom(
              btnText: "Save",
              isDisabled: !(state.editFormStatus == FormzStatus.valid),
              callback: () {
                context.read<EditProfileCubit>().editProfile();
              },
              margin: EdgeInsets.only(
                bottom: 20.h,
              ),
            );
          },
        ),
        TextButtonCustom(
          btnText: "Cancel",
          callback: () {
            context.read<EditProfileCubit>().toggleEditProfile();
          },
        ),
      ],
    );
  }
}
