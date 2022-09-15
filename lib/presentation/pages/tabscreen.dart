import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/presentation/pages/welcome_screen.dart';
import 'package:flutter_gpotter/presentation/pages/card_screen.dart';
import 'package:flutter_gpotter/presentation/pages/favorite_list_scren.dart';

late User loggedinUser;

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 2;

  final _auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    getCurrentUser();
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
      appBar: AppBar(title: const Text('d')),
      body: IndexedStack(
        index: _currentIndex,
        children:  [
          WelcomeScreen(),
          const CardScreen(),
          const FavoriteListScreen(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          label: 'abc',
          icon: Icon(
            Icons.abc,
          ),
        ),
        BottomNavigationBarItem(
          label: 'abc',
          icon: Icon(
            Icons.abc,
          ),
        ),
        BottomNavigationBarItem(
          label: 'abc',
          icon: Icon(
            Icons.abc,
          ),
        ),
      ]),
    );
  }
}
