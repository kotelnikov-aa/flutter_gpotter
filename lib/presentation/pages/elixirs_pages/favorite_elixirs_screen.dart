import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_card_screen.dart';

import '../../../generated/swagger.swagger.dart';
import '../../../internal/enums.dart';

class FavoriteElixirScreen extends StatefulWidget {
  const FavoriteElixirScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteElixirScreen> createState() => _FavoriteElixirScreenState();
}

class _FavoriteElixirScreenState extends State<FavoriteElixirScreen> {
  final Swagger service =
      Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
  var state = ContentState.initial;
  final elixirs = <ElixirDto>[];

  Future<void> load() async {
    setState(() {
      state = ContentState.loading;
    });
    final response = await service.elixirsGet();
    if (!response.isSuccessful) {
      setState(() {
        state = ContentState.failure;
        elixirs.clear();
      });
    } else {
      setState(() {
        state = response.body!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        elixirs
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
      body: _ElixirView(
        state: state,
        elixirs: elixirs,
      ),
    );
  }
}

class _ElixirView extends StatelessWidget {
  final ContentState state;
  final List<ElixirDto>? elixirs;

  const _ElixirView({
    Key? key,
    required this.state,
    this.elixirs = const [],
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ContentState.success:
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: elixirs?.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ElixirCardScreen(elixir: elixirs![i]),
                ),
              );
            },
            child: _listPositionView(elixirs![i]),
          ),
        );
      case ContentState.loading:
        return const Center(
          child: CircularProgressIndicator(),
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

Widget _listPositionView(ElixirDto value) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value.name ?? ' ',
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Effect - ${value.effect}',
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              value.difficulty.toString(),
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
        ],
      ),
    ),
  );
}
