import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/houses_pages/houses_short_info_page.dart';

import '../loading_pages/loading_list_page.dart';
import 'houses_card_screen.dart';

class HousesScreen extends StatefulWidget {
  const HousesScreen({Key? key}) : super(key: key);

  @override
  State<HousesScreen> createState() => _HousesScreenState();
}

class _HousesScreenState extends State<HousesScreen> {
  final Swagger service =
      Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
  var state = ContentState.initial;
  final houses = <HouseDto>[];

  Future<void> load() async {
    setState(() {
      state = ContentState.loading;
    });
    final response = await service.housesGet();
    if (!response.isSuccessful) {
      setState(() {
        state = ContentState.failure;
        houses.clear();
      });
    } else {
      setState(() {
        state = response.body!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        houses
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
    return Scaffold(
      body: _HousesView(
        state: state,
        houses: houses,
      ),
    );
  }
}

class _HousesView extends StatelessWidget {
  final ContentState state;
  final List<HouseDto> houses;

  const _HousesView({
    Key? key,
    required this.state,
    required this.houses,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      houses.sort((a, b) => a.name!.compareTo(b.name!));
    }
    switch (state) {
      case ContentState.success:
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: houses.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HousesCardScreen(houses: houses[i]),
                ),
              );
            },
            child: HousesShortInfoView(value: houses[i]),
          ),
        );
      case ContentState.loading:
        return const Center(
          child: LoadingPage(),
        );
      case ContentState.empty:
        return const Center(
          child: Text(
            'Пустой список эликсиров',
          ),
        );
      case ContentState.failure:
        return const Center(
          child: Text(
            'Ууупс, что-то пошло не так',
          ),
        );
      default:
        return const Center(
          child: Text('Эликсиры не загружены'),
        );
    }
  }
}
