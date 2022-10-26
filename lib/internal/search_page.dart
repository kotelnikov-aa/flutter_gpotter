import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'enums.dart';


class SearchPage extends StatefulWidget {

  const SearchPage({Key? key}) : super(key: key);


  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // The search area here
          backgroundColor: (StatusSettings.change.favoriteSccreenStatus
              ? secondaryColor
              : secondaryColorLight),
          title: Container(
            width: double.infinity,
            height: 40,

            decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          StatusSettings.change.searchText=controller.text;
                          Navigator.pop(context);
                        });
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        if (controller.text.isEmpty) {
                          Navigator.pop(context);
                          return;
                        }
                        setState(() {
                          controller.clear();

                        });
                      },
                    ),
                    hintText: 'Поиск...',
                    border: InputBorder.none),
                onChanged: (query) => onSearchTextChanged(query),

              ),
            ),
          )),
    );
  }

  void onSearchTextChanged(String text)  {

    setState(() {
      StatusSettings.change.searchText=text;
    });

  }

  void onSearchTextTap(String text)  {

    setState(() {
      StatusSettings.change.searchText=text;
      if (text.toString().isNotEmpty) Navigator.pop(context);
    });

  }

}

