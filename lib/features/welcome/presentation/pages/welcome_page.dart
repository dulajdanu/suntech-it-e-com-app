import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/features/welcome/presentation/pages/welcome_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: WelcomePage());

  @override
  Widget build(BuildContext context) {
    return const WelcomeView();
  }
}
