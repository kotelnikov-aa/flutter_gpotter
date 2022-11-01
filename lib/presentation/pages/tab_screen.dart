import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/internal/constants/colors.dart';
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
  final _auth = FirebaseAuth.instance;
  List<Widget> stackList = NavigatorList.getPages();
  Color backColor = secondaryColorLight;
  Color mainColor = secondaryColor;

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
      if (StatusSettings.change.favoriteSccreenStatus) {
        StatusSettings.change.favoriteSccreenStatus = false;

        backColor = secondaryColorLight;
        mainColor = secondaryColor;
      } else {
        StatusSettings.change.favoriteSccreenStatus = true;
        backColor = secondaryColor;
        mainColor = secondaryColorLight;
      }
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
        backgroundColor: backColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>  SearchPage(currentIndex: _currentIndex)));

            },
            icon: const Icon(Icons.search),
            color: mainColor,
          ),
          TextButton(
            onPressed: (() {
              chanheSorting();
            }),
            child: Icon(
              Icons.list,
              color: (StatusSettings.change.sortingListStatus
                  ? primaryColor
                  : mainColor),
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
                  : mainColor),
            ),
          ),
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: stackList),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: changeTab,
          fixedColor: primaryColorDark,
          backgroundColor: backColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Elixirs', icon: Icon(Icons.drag_indicator_sharp)),
            BottomNavigationBarItem(label: 'Houses', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Spells', icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: 'Wizards', icon: Icon(Icons.wallet)),
          ]),
    );
  }
}
