import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/internal/navigation/navigation.dart';

late User loggedinUser;

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  bool _favorite = true;
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
      navigatorsPages.setcurrentpagekey = NavigatorsPages.keyspages[index];
    });
  }

  void changeFavorite() {
    setState(() {
      navigatorsPages.setcurrentpagekey =
          NavigatorsPages.keyspages[_currentIndex];

      if (_favorite == false) {
        _favorite = true;
      } else {
        _favorite = false;
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_favorite ? 'favorite screen' : 'main screen'),
        backgroundColor: (_favorite ? Colors.red : Colors.grey),
        actions: [
          TextButton(
              onPressed: (() {
                changeFavorite();
              }),
              child: Icon(Icons.star,
                  color: (_favorite ? Colors.amber : Colors.black))),
        ],
      ),
      body: _favorite
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
          backgroundColor: (_favorite ? Colors.red : Colors.grey),
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
