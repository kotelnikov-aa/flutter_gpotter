import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/loading_pages/loading_list_page.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_short_info_page.dart';

import '../../../generated/swagger.swagger.dart';
import '../../../internal/enums.dart';
import 'spels_card_screen.dart';

class SpelsScreen extends StatefulWidget {
  const SpelsScreen({Key? key}) : super(key: key);

  @override
  State<SpelsScreen> createState() => _SpelsScreenScreenState();
}

class _SpelsScreenScreenState extends State<SpelsScreen> {
  final Swagger service =
      Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
  var state = ContentState.initial;
  final spels = <SpellDto>[];

  Future<void> load() async {
    setState(() {
      state = ContentState.loading;
    });
    final response = await service.spellsGet();
    if (!response.isSuccessful) {
      setState(() {
        state = ContentState.failure;
        spels.clear();
      });
    } else {
      setState(() {
        state = response.body!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        spels
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
      body: _Spelsview(
        state: state,
        spels: spels,
      ),
    );
  }
}

class _Spelsview extends StatelessWidget {
  final ContentState state;
  final List<SpellDto>? spels;

  const _Spelsview({
    Key? key,
    required this.state,
    this.spels = const [],
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ContentState.success:
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: spels?.length,
          itemBuilder: (context, i) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplelsCardScreen(spels: spels![i]),
                  ),
                );
              },
              child: SpelsShortInfoView(
                value: spels![i],
              )),
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
