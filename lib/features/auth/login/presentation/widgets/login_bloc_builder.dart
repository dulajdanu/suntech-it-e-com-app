import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/auth/login/bloc/login_bloc.dart';

class LoginBlocBuilder extends StatelessWidget {
  const LoginBlocBuilder({
    Key? key,
    required this.builder,
    this.buildWhen,
  }) : super(key: key);
  final RvBuilder<LoginState> builder;
  final RvBuildWhen<LoginState>? buildWhen;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }
}
