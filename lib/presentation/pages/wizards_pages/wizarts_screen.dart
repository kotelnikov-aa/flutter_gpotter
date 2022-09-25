import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_short_info_page.dart';
import '../../../internal/enums.dart';
import '../loading_pages/loading_list_page.dart';

class WizartsScreen extends StatefulWidget {
  const WizartsScreen({Key? key}) : super(key: key);

  @override
  State<WizartsScreen> createState() => _WizartsScreenState();
}

class _WizartsScreenState extends State<WizartsScreen> {
  final Swagger service =
      Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
  var state = ContentState.initial;
  bool allloading = false;
  final wizarts = <WizardDto>[];

  Future<void> load() async {
    setState(() {
      state = ContentState.loading;
    });
    final response = await service.wizardsGet();
    if (!response.isSuccessful) {
      setState(() {
        state = ContentState.failure;
        wizarts.clear();
      });
    } else {
      setState(() {
        state = response.body!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        wizarts
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
      body: _WizartsView(
        state: state,
        wizarts: wizarts,
      ),
    );
  }
}

class _WizartsView extends StatelessWidget {
  final ContentState state;
  final List<WizardDto> wizarts;

  const _WizartsView({
    Key? key,
    required this.state,
    required this.wizarts,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      wizarts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    }
    switch (state) {
      case ContentState.success:
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: wizarts.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ElixirCardScreen(elixir: elixirs[i]),
              //   ),
              // );
            },
            child: WizartsShortInfoView(value: wizarts[i]),
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
