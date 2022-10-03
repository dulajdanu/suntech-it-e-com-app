import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: MainPage());

  @override
  Widget build(BuildContext context) {
    return AppBackgroundCustom(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.addAppEvent(const AppEvent.logoutRequested());
          },
          tooltip: "Logout",
          child: const Icon(Icons.snowing),
        ),
        appBar: AppBarCustom(
          leadingWidget: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          trailingWidget: Padding(
            padding:
                EdgeInsets.only(right: AppConstants.homePageHorizontalMargin),
            child: const Icon(Icons.notifications_outlined),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          unselectedItemColor: Colors.orange,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Fav',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {},
        ),
        bodyWidget: Column(
          children: [
            TextCustomWidget(
              text: 'Discover Your Best ',
              textStyle: AppConstants
                  .headingTextStyle, //todo add the correct fontWeight here
              marginLeft: AppConstants.homePageHorizontalMargin,
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.homePageHorizontalMargin),
              child: Card(
                elevation: 5,
                color: const Color(0xff262626),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffACACAC),
                    ),
                    hintText: "Search Headphones",
                    hintStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffACACAC),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
