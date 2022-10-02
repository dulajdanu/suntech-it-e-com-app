import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/constants/widgets/app_bar_custom.dart';

class AppBackgroundCustom extends StatelessWidget {
  const AppBackgroundCustom({
    Key? key,
    this.backgroundColor,
    this.appBar,
    required this.bodyWidget,
    this.bottomNavigationBar,
    this.floatingActionButton,
  }) : super(key: key);

  ///This is the background color of the screen
  final Color? backgroundColor;

  ///This is the app bar widget
  final PreferredSizeWidget? appBar;

  ///This will be the body of the screen
  final Widget bodyWidget;

  final BottomNavigationBar? bottomNavigationBar;

  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppConstants.backgroundColor,
      appBar: appBar ?? const AppBarCustom(),
      body: bodyWidget,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
