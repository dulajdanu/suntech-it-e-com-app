import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/features/user_profile/cubit/edit_profile_cubit.dart';

class EditProfileBlocBuilder extends StatelessWidget {
  const EditProfileBlocBuilder({
    Key? key,
    required this.builder,
    this.buildWhen,
  }) : super(key: key);
  final RvBuilder<EditProfileState> builder;
  final RvBuildWhen<EditProfileState>? buildWhen;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }
}
