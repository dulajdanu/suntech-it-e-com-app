import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_bloc_builder.dart';

class EditProfileFullNameInputWidget extends StatelessWidget {
  const EditProfileFullNameInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EditProfileBlocBuilder(
      buildWhen: (previous, current) => previous.fullName != current.fullName,
      builder: (context, state) => TextFieldCustom(
        hintText: "Full Name",
        initialValue: state.fullName.value,
        prefixIcon: FontAwesomeIcons.user, //todo add the correct icon here
        margins: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultHorizontalMargin,
        ),
        key: const Key('editprofileForm_fullNameInput_textField'),
        onValueChanged: (fname) =>
            context.read<EditProfileCubit>().onFullNameChanged(fname),
        keyboardType: TextInputType.name,
        errorText: state.fullName.invalid
            ? state.fullName.error?.validationMessage
            : null,
      ),
    );
  }
}
