import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/pages/login_page.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/pages/sign_up_page.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            },
            child: const Text("login"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ));
            },
            child: const Text("sign up"),
          )
        ],
      ),
    );
    //   body: Container(
    //     decoration: const BoxDecoration(
    //       gradient: RadialGradient(
    //         colors: [
    //           Color(0xff4479D5),
    //           Color(0xff2EB0E0),
    //         ],
    //       ),

    //     ),
    //   ),
    // );
  }
}
