import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository.dart';
import 'package:suntech_it_e_com_app/core/service_locators/service_locator.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/pages/user_profile_view.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contextM) {
    return BlocProvider(
      create: (context) => EditProfileCubit(
          userDataRepository: serviceLocator<UserDataRepository>(),
          appBloc: contextM.read<AppBloc>()),
      lazy: false,
      child: const UserProfileView(),
    );
  }
}
