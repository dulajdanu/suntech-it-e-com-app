import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/cart/presentation/cart_page.dart';
import 'package:suntech_it_e_com_app/features/favourites/presentation/favourites_page.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/pages/home_page.dart';
import 'package:suntech_it_e_com_app/features/main_page/presentation/widgets/selected_icon_widget.dart';
import 'package:suntech_it_e_com_app/features/user_profile/presentation/pages/user_profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: MainPage());

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIdx = 0;

  final List<Widget> screens = [
    const HomePage(),
    const FavoritesPage(),
    const CartPage(),
    const UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: AppBackgroundCustom(
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIdx,
          onTap: (index) {
            setState(() {
              selectedIdx = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: AppConstants.lightBlackColor,
              activeIcon: SelectedIconWidget(
                iconType: IconType.home,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Favorites',
              backgroundColor: AppConstants.lightBlackColor,
              activeIcon: SelectedIconWidget(
                iconType: IconType.fav,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: AppConstants.lightBlackColor,
              activeIcon: SelectedIconWidget(
                iconType: IconType.cart,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: AppConstants.lightBlackColor,
              activeIcon: SelectedIconWidget(
                iconType: IconType.profile,
              ),
            ),
          ],
        ),
        bodyWidget: IndexedStack(
          index: selectedIdx,
          children: [
            ...screens.map((e) => e).toList(),
          ],
        ),
      ),
    );
  }
}
