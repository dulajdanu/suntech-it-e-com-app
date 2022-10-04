import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suntech_it_e_com_app/core/widgets/text_custom.dart';
import 'package:suntech_it_e_com_app/features/auth/login/presentation/pages/login_page.dart';
import 'package:suntech_it_e_com_app/features/auth/sign_up/presentation/pages/sign_up_page.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const LoginPage(),
      //             ));
      //       },
      //       child: const Text("login"),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const SignUpPage(),
      //             ));
      //       },
      //       child: const Text("sign up"),
      //     )
      //   ],
      // ),
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/welcome_screen.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                // color: Colors.yellow,
                // alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/head_phone.png",
                  height: 534.h,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 34.w,
                ),
                // color: Colors.green,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextCustomWidget(
                      text: "suntechit".toUpperCase(),
                      textStyle: GoogleFonts.roboto(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      marginTop: 149.h,
                      marginBottom: 10.h,
                    ),
                    TextCustomWidget(
                      text: "Ecommerce".toUpperCase(),
                      textStyle: GoogleFonts.roboto(
                        fontSize: 52.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      marginBottom: 553.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.h))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ));
                          },
                          child: const Text("login"),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff4C86D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.h))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ));
                          },
                          child: const Text("sign up"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
