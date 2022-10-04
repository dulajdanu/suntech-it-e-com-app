import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextCustomWidget(
      text: "Cart page",
      containerAlignment: Alignment.center,
    );
  }
}
