import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///This widget is used to create the selected icon in bottom navigation bar
class SelectedIconWidget extends StatelessWidget {
  const SelectedIconWidget({
    Key? key,
    required this.iconType,
  }) : super(key: key);
  final IconType iconType;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff4FBBE3),
                Color(0xff4E5BB3),
              ],
            ),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: Builder(
          builder: (context) {
            if (iconType == IconType.home) {
              return const Icon(Icons.home);
            } else if (iconType == IconType.fav) {
              return const Icon(FontAwesomeIcons.heart);
            } else if (iconType == IconType.cart) {
              return const Icon(Icons.shopping_cart);
            } else if (iconType == IconType.profile) {
              return const Icon(Icons.person);
            } else {
              return const Icon(Icons.home);
            }
          },
        ));
  }
}

enum IconType { home, fav, cart, profile }
