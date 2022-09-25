import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/internal/navigation/navigation.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_screen.dart';

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

      if (StatusSettings.change.favoriteSccreenStatus == false) {
        StatusSettings.change.favoriteSccreenStatus = true;
      } else {
        StatusSettings.change.favoriteSccreenStatus = false;
      }
    });
  }

  void chanheSorting() {
    setState(() {
      print('changesort index- $_currentIndex');
      changeTab(_currentIndex);
      if (StatusSettings.change.sortingListStatus == false) {
        StatusSettings.change.sortingListStatus = true;
      } else {
        StatusSettings.change.sortingListStatus = false;
      }
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
    print('build index- $_currentIndex');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(StatusSettings.change.favoriteSccreenStatus
            ? 'favorite screen'
            : 'main screen'),
        backgroundColor: (StatusSettings.change.favoriteSccreenStatus
            ? Colors.red
            : Colors.grey),
        actions: [
          TextButton(
            onPressed: (() {
              chanheSorting();
            }),
            child: Icon(
              Icons.list,
              color: (StatusSettings.change.sortingListStatus
                  ? Color.fromARGB(255, 255, 7, 197)
                  : Colors.black),
            ),
          ),
          TextButton(
            onPressed: (() {
              changeFavorite();
            }),
            child: Icon(
              Icons.star,
              color: (StatusSettings.change.favoriteSccreenStatus
                  ? Colors.amber
                  : Colors.black),
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
          backgroundColor: (StatusSettings.change.favoriteSccreenStatus
              ? Colors.red
              : Colors.grey),
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
