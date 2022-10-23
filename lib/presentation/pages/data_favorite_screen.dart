import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_screen.dart';
import 'package:flutter_gpotter/presentation/pages/houses_pages/houses_screen.dart';
import 'package:flutter_gpotter/presentation/pages/loading_pages/loading_list_page.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_screen.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_screen.dart';

import '../../data/favorite_get_set/get_favorite_list.dart';
import '../../internal/enums.dart';

class DataFavoriteScreen extends StatelessWidget {
  const DataFavoriteScreen({super.key, required this.dataApi});
  final DataAPI dataApi;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: const TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            switch (dataApi) {
              case DataAPI.elixirs:
                final data = snapshot.data as List<ElixirDto>;
                return ElixirsScreen(elixirs: data);
              case DataAPI.houses:
                final data = snapshot.data as List<HouseDto>;
                return HousesScreen(houses: data);
              case DataAPI.spels:
                final data = snapshot.data as List<SpellDto>;
                return SpelsScreen(spels: data);
              case DataAPI.wizarts:
                final data = snapshot.data as List<WizardDto>;
                return WizartsScreen(wizarts: data);
            }
          }
        }
        return const Center(
          child: LoadingPage(),
        );
      },
      future: getFavoriteList(dataApi),
    );
  }
}
