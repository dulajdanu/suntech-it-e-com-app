import 'package:flutter/widgets.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/features/main_page/presentation/pages/main_page.dart';
import 'package:suntech_it_e_com_app/features/welcome/presentation/pages/welcome_page.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  if (state == AppStatus.authenticated) {
    return [MainPage.page()];
  } else {
    return [WelcomePage.page()];
  }
}
