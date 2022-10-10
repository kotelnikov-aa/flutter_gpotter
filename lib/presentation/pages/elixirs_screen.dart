import 'package:flutter/material.dart';

import '../../generated/swagger.swagger.dart';
import '../../internal/enums.dart';

class ElixirScreen extends StatefulWidget {
  const ElixirScreen({Key? key}) : super(key: key);

  @override
  State<ElixirScreen> createState() => _ElixirScreenState();

}


class _ElixirScreenState extends State<ElixirScreen> {


  final Swagger service = Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');
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

      appBar: AppBar(
        title: const Text(
          "Эликсир",
        ),
      ),

      body: _ElixirView(state: state,
        elixirs: elixirs,),
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
          itemBuilder: (context, i) => ListTile(

            title: Row( children: [

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(elixirs?[i].id??'',
                    ),
                    Text(elixirs?[i].name??'',
                    ),
                    const SizedBox(height: 30,),
                    Text(elixirs?[i].manufacturer??'',
                    ),
                    Text(elixirs?[i].characteristics??'',
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ],
            ),
          ),
        );
      case ContentState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case ContentState.empty:
        return  const Center(
          child: Text('Пустой список эликсиров',
          ),
        );
      case ContentState.failure:
        return  const Center(
          child:  Text(
            'Ууупс, что-то пошло не так',
          ),
        );
      default:
        return  const Center(
          child: Text('Эликсиры не загружены'),
        );
    }
  }
}




