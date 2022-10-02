import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/widgets/sign_up_bloc_builder.dart';

class FullNameInputWidget extends StatelessWidget {
  const FullNameInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(
      buildWhen: (previous, current) => previous.fullName != current.fullName,
      builder: (context, state) => TextFieldCustom(
        hintText: "Full Name",
        prefixIcon: FontAwesomeIcons.user, //todo add the correct icon here
        margins: EdgeInsets.only(
          bottom: 19.h,
        ),
        key: const Key('signupForm_firstNameInput_textField'),
        onValueChanged: (fname) =>
            context.addSignUpEvent(SignUpEvent.fullNameChanged(fname)),
        keyboardType: TextInputType.name,
        errorText: state.fullName.invalid
            ? state.fullName.error?.validationMessage
            : null,
      ),
    );
  }
}
