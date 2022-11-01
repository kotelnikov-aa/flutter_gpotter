import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/colors.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_card_screen.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_card_screen.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_card_screen.dart';
import '../presentation/pages/houses_pages/houses_card_screen.dart';
import 'enums.dart';


class SearchPage extends StatefulWidget {
  int? currentIndex;

  SearchPage({required int this.currentIndex, Key? key}) : super(key: key);


  @override
  _SearchPageState createState() => _SearchPageState();
}
class _SearchPageState extends State<SearchPage> {
  final TextEditingController _filter =  TextEditingController();
  Color backColor = secondaryColorLight;
  String _searchText = "";
  late var names;
  late var filteredNames;
  Icon _searchIcon =  const Icon(Icons.search);
  Widget _appBarTitle =  const Text( 'Enter Search ' );

  _SearchPageState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    List tempList = [];
    switch ( widget.currentIndex) {
      case 0:
        tempList = StatusSettings.change.elixirs;
        break;
      case 1:
        tempList = StatusSettings.change.houses;
        break;
      case 2:
        tempList = StatusSettings.change.spels;
        break;
      case 3:
        tempList = StatusSettings.change.wizarts;
        break;
    }

    setState(() {
      names = tempList;
      names.shuffle();
      filteredNames = names;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backColor,
        centerTitle: true,
        title: _appBarTitle,
        leading: IconButton(
          icon: _searchIcon,
          onPressed: _searchPressed,

        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(5)),
        child: _buildList(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }


  Widget _buildList() {
    if (_searchText.isNotEmpty) {
      List tempList = [];
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i].name!.toString().toLowerCase().contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return ListView.builder(
      itemCount: names == null ? 0 : filteredNames.length,
      itemBuilder: (BuildContext context, int index) {
        return  ListTile(
          hoverColor: colorCardTwo,
          title: Text(filteredNames[index].name!.toString()),
          onTap: () => {_pushPage(filteredNames[index])},
        );
          },
        );
      }


  void _searchPressed() {
    setState(() {
      if (_searchIcon.icon == Icons.search) {
        _searchIcon =  const Icon(Icons.close);
        _appBarTitle =  TextField(
          controller: _filter,

          decoration:  const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon:  Icon(Icons.search),
              hintText: 'Search...'
          ),
        );
      } else {
        _searchIcon = const Icon(Icons.search);
        _appBarTitle = const Text( 'Search ' );
        filteredNames = names;
        _filter.clear();
      }
    });
  }



  void _pushPage(var value)  {
    switch ( widget.currentIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ElixirCardScreen(elixir: value),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HousesCardScreen(houses: value),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SplelsCardScreen(spels: value),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WizartsCardScreen(wizarts: value),
          ),
        );        break;
    }
  }


}