import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/data_favorite_screen.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';

class BackButtonPotter extends StatelessWidget {
  const BackButtonPotter({super.key, required this.apiKey});
  final DataAPI apiKey;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: const BottonPotter(value: 'back'),
        // onTap: () => Navigator.pop(context),
        onTap: () {
          StatusSettings.change.favoriteSccreenStatus
              ? Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataFavoriteScreen(dataApi: apiKey),
                  ),
                )
              : Navigator.pop(context);
        });
  }
}

class BackButtonPotterFromFavorite extends StatelessWidget {
  const BackButtonPotterFromFavorite({super.key, required this.apiKey});
  final DataAPI apiKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: const BottonPotter(value: 'back'),
        onTap: () {
          StatusSettings.change.favoriteSccreenStatus
              ? Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataFavoriteScreen(dataApi: apiKey),
                  ),
                )
              : Navigator.pop(context);
        });
  }
}
