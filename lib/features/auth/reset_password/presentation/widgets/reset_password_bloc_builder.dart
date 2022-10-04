import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';

class ResetPasswordBlocBuilder extends StatelessWidget {
  const ResetPasswordBlocBuilder({
    Key? key,
    required this.builder,
    this.buildWhen,
  }) : super(key: key);
  final RvBuilder<ResetPasswordState> builder;
  final RvBuildWhen<ResetPasswordState>? buildWhen;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }
}
