import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/bloc/sign_up_bloc.dart';

class SignUpBlocBuilder extends StatelessWidget {
  const SignUpBlocBuilder({
    Key? key,
    required this.builder,
    this.buildWhen,
  }) : super(key: key);
  final RvBuilder<SignUpState> builder;
  final RvBuildWhen<SignUpState>? buildWhen;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }
}
