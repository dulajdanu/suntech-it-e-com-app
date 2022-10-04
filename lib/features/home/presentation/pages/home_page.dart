import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suntech_it_e_com_app/core/service_locators/service_locator.dart';
import 'package:suntech_it_e_com_app/features/home/bloc/products/cubit/products_cubit.dart';
import 'package:suntech_it_e_com_app/features/home/data/repositories/home_repository.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/pages/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        homeRepository: serviceLocator<HomeRepository>(),
      ),
      lazy: false,
      child: const HomeView(),
    );
  }
}
