import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    Key? key,
    this.prefixIcon,
    this.labelText,
    this.hintText,
    this.hintTextstyle,
    this.margins,
    this.textEditingController,
    this.labelWidget,
    this.borderRadius,
    this.textInputFormatter,
    this.isNumber = false,
    this.errorText,
    this.onValueChanged,
    this.fillColor,
    this.isDisabled,
    this.initialValue,
    this.borderColor,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.minLines,
    this.maxLines,
    this.shadowDisable = false,
    this.contentPadding,
    this.focusNode,
    this.height,
    this.isDense,
  }) : super(key: key);

  ///The prefix icon of the text field
  final IconData? prefixIcon;

  ///The suffix icon of the text field
  final Widget? suffixIcon;

  ///The label text of the text field
  final String? labelText;

  ///The margins around the text field
  final EdgeInsets? margins;

  ///THe fint text of the text field
  final String? hintText;

  ///The style of hint text
  final TextStyle? hintTextstyle;

  ///The label widget of the text field
  final Widget? labelWidget;

  final BorderRadius? borderRadius;

  final TextInputFormatter? textInputFormatter;

  final TextEditingController? textEditingController;

  final String? errorText;

  final bool? isNumber;
  final Color? fillColor;

  final bool? isDisabled;

  final Color? borderColor;

  final TextInputType? keyboardType;

//This will be the inital value of the text field
  final String? initialValue;

  final bool obscureText;

  final int? minLines;

  final int? maxLines;

  final bool shadowDisable;

  final EdgeInsetsGeometry? contentPadding;

  final FocusNode? focusNode;

  final double? height;

  final bool? isDense;

  final Function(String)? onValueChanged;
  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  ///To check whether the password can be shown or not
  ///
  late bool canShowText;

  @override
  void initState() {
    canShowText = !widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      margin: widget.margins,
      // decoration: BoxDecoration(
      //     boxShadow: (!(widget.isDisabled ?? false))
      //         ? (widget.errorText == null)
      //             ? (!widget.shadowDisable)
      //                 ? [
      //                     const BoxShadow(
      //                       color: Color(0x28000000),
      //                       // offset, the X,Y coordinates to offset the shadow
      //                       offset: Offset(5.0, 5.0),
      //                       // blurRadius, the higher the number the more smeared look
      //                       blurRadius: 20.0,
      //                       spreadRadius: -10,
      //                     )
      //                   ]
      //                 : null
      //             : null
      //         : null),
      child: TextFormField(
        focusNode: widget.focusNode,
        initialValue: widget.initialValue,
        enabled: widget.isDisabled == true ? false : true,
        controller: widget.textEditingController,
        inputFormatters: widget.textInputFormatter != null
            ? [widget.textInputFormatter!]
            : [],
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppConstants.inputTextColor,
        ),
        minLines: widget.minLines ?? 1,
        maxLines: widget.maxLines ?? 1,
        obscureText: !canShowText,
        decoration: InputDecoration(
          hintText: widget.hintText,

          labelText: widget.labelText,
          // contentPadding: widget.contentPadding ??
          //     EdgeInsets.only(left: 16.83.w, top: 12, bottom: 12, right: 18),
          isDense: widget.isDense ?? true,
          // border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.83.w),
            child: Icon(
              widget.prefixIcon,
              size: 22.h,
              color: AppConstants.textFieldIconColor,
            ),
          ),
          suffixIcon: widget.obscureText == true
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      canShowText = !canShowText;
                    });
                  },
                  icon: Icon(
                    canShowText
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                    size: 26.0,
                    color: AppConstants.textFieldIconColor,
                  ),
                )
              : widget.suffixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 25,
            minHeight: 25,
          ),
          label: widget.labelWidget,
          fillColor: widget.fillColor ??
              ((!(widget.isDisabled ?? false))
                  ? const Color(0xFFF0F0F0)
                  : const Color(0xffE9E9E9)),
          // filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12.h),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.textFieldBorderColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12.h),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants
                  .textFieldBorderColor, //todo add the correct disable color here
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12.h),
            borderSide: BorderSide(
              width: 1.h,
              color: AppConstants.textFieldBorderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12.h),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12.h),
            borderSide: BorderSide(
              width: 1.h,
              color: Colors.red,
            ),
          ),
          hintStyle: widget.hintTextstyle ??
              TextStyle(
                color: AppConstants.hintTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),

          errorText: widget.errorText,
          errorMaxLines: 2,
          errorStyle: const TextStyle(color: Colors.red),
        ),
        keyboardType: widget.keyboardType ?? TextInputType.text,
        onChanged: (value) {
          if (widget.onValueChanged != null) {
            widget.onValueChanged!(value);
          }
        },
      ),
    );
  }
}
