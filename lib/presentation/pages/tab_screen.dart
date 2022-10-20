import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/internal/navigation/navigation.dart';
import 'package:flutter_gpotter/internal/search_page.dart';

late User loggedinUser;

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  NavigatorsPages navigatorsPages = NavigatorsPages();
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      navigatorsPages.currentpagekey = NavigatorsPages.keyspages[index];
    });
  }

  void changeFavorite() {
    setState(() {
      navigatorsPages.currentpagekey = NavigatorsPages.keyspages[_currentIndex];
      StatusSettings.change.favoriteSccreenStatus =
          StatusSettings.change.favoriteSccreenStatus ? false : true;
    });
  }

  void chanheSorting() {
    changeTab(_currentIndex);
    setState(() {
      StatusSettings.change.sortingListStatus =
          StatusSettings.change.sortingListStatus ? false : true;
    });
  }

  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          StatusSettings.change.favoriteSccreenStatus
              ? 'favorite screen'
              : 'main screen',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: (StatusSettings.change.favoriteSccreenStatus
            ? secondaryColor
            : secondaryColorLight),
        actions: [
          IconButton(
              onPressed: () {

                Navigator.of(context)
                    .push(MaterialPageRoute(
                    builder: (_) => const SearchPage()));
                changeFavorite();
              },
              icon: const Icon(Icons.search),
              color: (StatusSettings.change.sortingListStatus
                  ? primaryColor
                  : StatusSettings.change.favoriteSccreenStatus
                  ? secondaryColorLight
                  : secondaryColor)),
          TextButton(
            onPressed: (() {
              chanheSorting();
            }),
            child: Icon(
              Icons.list,
              color: (StatusSettings.change.sortingListStatus
                  ? primaryColor
                  : StatusSettings.change.favoriteSccreenStatus
                      ? secondaryColorLight
                      : secondaryColor),
            ),
          ),
          TextButton(
            onPressed: (() {
              changeFavorite();
            }),
            child: Icon(
              Icons.star,
              color: (StatusSettings.change.favoriteSccreenStatus
                  ? primaryColor
                  : secondaryColor),
            ),
          ),
        ],
      ),
      body: StatusSettings.change.favoriteSccreenStatus
          ? IndexedStack(
              index: _currentIndex,
              children: navigatorsPages.favoritelistpages,
            )
          : IndexedStack(
              index: _currentIndex,
              children: navigatorsPages.listpages,
            ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: changeTab,
          fixedColor: primaryColorDark,
          backgroundColor: (StatusSettings.change.favoriteSccreenStatus
              ? secondaryColor
              : secondaryColorLight),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Elixirs',
              icon: Icon(
                Icons.drag_indicator_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Houses',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Spells',
              icon: Icon(
                Icons.abc,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Wizards',
              icon: Icon(
                Icons.wallet,
              ),
            ),
          ]),
    );
  }
}
