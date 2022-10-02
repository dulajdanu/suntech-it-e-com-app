import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
    this.height = kToolbarHeight,
    this.leadingWidget,
    this.trailingWidget,
  }) : super(key: key);
  final double height;
  final Widget? leadingWidget;
  final Widget? trailingWidget;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: leadingWidget,
      actions: trailingWidget != null ? [trailingWidget!] : null,
    );
  }
}
