import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/service_locators/service_locator.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/presentation/pages/reset_password_view.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(
          resetPasswordRepository: serviceLocator<ResetPasswordRepository>()),
      child: const ResetPasswordView(),
    );
  }
}
