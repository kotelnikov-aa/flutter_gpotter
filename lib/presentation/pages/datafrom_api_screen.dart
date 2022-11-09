import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_screen.dart';
import 'package:flutter_gpotter/presentation/pages/houses_pages/houses_screen.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_screen.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_screen.dart';
import '../../internal/enums.dart';
import 'loading_pages/loading_list_page.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key, required this.dataApi}) : super(key: key);
  final DataAPI dataApi;

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  late final response;
  late var data;

  final Swagger service =
      Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
  var state = ContentState.initial;

  Future<void> load() async {
    setState(() {
      state = ContentState.loading;
    });
    switch (widget.dataApi) {
      case DataAPI.elixirs:
        {
          response = await service.elixirsGet();
          data = <ElixirDto>[];
          break;
        }

      case DataAPI.houses:
        {
          response = await service.housesGet();
          data = <HouseDto>[];
          break;
        }
      case DataAPI.spels:
        {
          response = await service.spellsGet();
          data = <SpellDto>[];
          break;
        }
      case DataAPI.wizarts:
        {
          response = await service.wizardsGet();
          data = <WizardDto>[];
          break;
        }
    }
    if (!response.isSuccessful) {
      setState(() {
        state = ContentState.failure;
        data.clear();
      });
    } else {
      setState(() {
        state = response.body!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        data
          ..clear()
          ..addAll(response.body!.toList());
      });
    }
  }

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ContentState.success:
        switch (widget.dataApi) {
          case DataAPI.elixirs:
            StatusSettings.change.elixirs = data;
            return ElixirsScreen(elixirs: data);
          case DataAPI.houses:
            StatusSettings.change.houses = data;
            return HousesScreen(houses: data);
          case DataAPI.spels:
            StatusSettings.change.spels = data;
            return SpelsScreen(spels: data);
          case DataAPI.wizarts:
            StatusSettings.change.wizarts = data;
            return WizartsScreen(wizarts: data);
        }
      case ContentState.loading:
        return const Center(
          child: LoadingPage(),
        );
      case ContentState.empty:
        return const Center(
          child: Text('Пустой список данных'),
        );
      case ContentState.failure:
        return const Center(
          child: Text('Ууупс, что-то пошло не так'),
        );
      default:
        return const Center(child: Text('данные не загружены'));
    }
  }
}

// init если загружены данные то .. если нет load()