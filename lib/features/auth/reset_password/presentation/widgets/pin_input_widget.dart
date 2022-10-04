import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';

class PinInputWidget extends StatelessWidget {
  PinInputWidget({
    Key? key,
    required this.slotNumber,
  }) : super(key: key);
  final int slotNumber;
  //todo in this widget change the direction of the cursor like in the design

  final maskFormatter = MaskTextInputFormatter(
      mask: '#',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.w,
      height: 61.h,
      child: TextFormField(
        onChanged: (val) {
          if (val.isNotEmpty) {
            context
                .read<ResetPasswordCubit>()
                .onPinCodeChanged(slotNumber, val);

            FocusScope.of(context).nextFocus();
          } else {
            print("empty");
            context
                .read<ResetPasswordCubit>()
                .onPinCodeChanged(slotNumber, val);
          }
        },
        inputFormatters: [maskFormatter],
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.textFieldBorderColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.mainBlueColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12.h,
            ),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
