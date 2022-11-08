import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/internal/navigation/navigation.dart';
import 'package:flutter_gpotter/internal/search_page.dart';
import 'package:provider/provider.dart';
import '../../internal/theme/theme_state.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

late User loggedinUser;

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  final _auth = FirebaseAuth.instance;
  List<Widget> stackList = NavigatorList.getPages();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  List<Widget> changeStackList() {
    List<Widget> stack;
    StatusSettings.change.favoriteSccreenStatus
        ? stack = NavigatorList.getFavoritePages()
        : stack = NavigatorList.getPages();
    return stack;
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void changeFavorite() {
    setState(() {
      StatusSettings.change.favoriteSccreenStatus =
          StatusSettings.change.favoriteSccreenStatus ? false : true;
      stackList = changeStackList();
    });
  }

  void chanheSorting() {
    setState(() {
      StatusSettings.change.sortingListStatus =
          StatusSettings.change.sortingListStatus ? false : true;
      stackList = changeStackList();
    });
  }

//
  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeState = context.watch<ThemeState>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(StatusSettings.change.favoriteSccreenStatus
            ? 'favorite screen'
            : 'main screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => SearchPage(currentIndex: _currentIndex)));
            },
            icon: const Icon(Icons.search),
            color: Theme.of(context).inputDecorationTheme.iconColor,
          ),
          TextButton(
            onPressed: (() {
              chanheSorting();
            }),
            child: Icon(
              Icons.list,
              color: (StatusSettings.change.sortingListStatus
                  ? Theme.of(context).inputDecorationTheme.fillColor
                  : Theme.of(context).inputDecorationTheme.iconColor),
            ),
          ),
          TextButton(
            onPressed: (() {
              changeFavorite();
            }),
            child: FaIcon(
              FontAwesomeIcons.star,
              color: (StatusSettings.change.favoriteSccreenStatus
                  ? Theme.of(context).inputDecorationTheme.fillColor
                  : Theme.of(context).inputDecorationTheme.iconColor),
            ),
          ),
          Switch(
            value: themeState.isDark,
            onChanged: (value) {
              if (value) {
                themeState.setDarkTheme();
              } else {
                themeState.setLightTheme();
              }
            },
          ),
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: stackList),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: changeTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Elixirs',
                icon: ImageIcon(AssetImage("assets/images/elixir_icon.png"),
                    size: 24)),
            BottomNavigationBarItem(
                label: 'Houses',
                icon: ImageIcon(AssetImage("assets/images/house_icon.png"),
                    size: 24)),
            BottomNavigationBarItem(
                label: 'Spells',
                icon: ImageIcon(AssetImage("assets/images/spels_icon.png"),
                    size: 24)),
            BottomNavigationBarItem(
                label: 'Wizards',
                icon: ImageIcon(AssetImage("assets/images/wizart_icon.png"),
                    size: 24)),
          ]),
    );
  }
}
