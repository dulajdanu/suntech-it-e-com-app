import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/core/widgets/text_custom.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextCustomWidget(
      text: "Favorites page",
      containerAlignment: Alignment.center,
    );
  }
}
