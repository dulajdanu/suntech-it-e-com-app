import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/widgets/edit_profile/edit_profile_bloc_builder.dart';

class EditProfileEmailInputWidget extends StatelessWidget {
  const EditProfileEmailInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EditProfileBlocBuilder(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFieldCustom(
          initialValue: state.email.value,

          key: const Key('editprofileForm_emailInput_textField'),
          onValueChanged: (email) =>
              context.read<EditProfileCubit>().onEmailChanged(email),
          keyboardType: TextInputType.emailAddress,
          errorText:
              state.email.invalid ? state.email.error?.validationMessage : null,
          hintText: "abc@email.com",
          margins: EdgeInsets.symmetric(
            horizontal: AppConstants.defaultHorizontalMargin,
          ),
          prefixIcon: Icons.mail, //todo add the correct icon here
        );
      },
    );
  }
}
