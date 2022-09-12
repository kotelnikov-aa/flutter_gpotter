import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/auth_page.dart';
import 'package:flutter_gpotter/presentation/pages/card_screen.dart';
import 'package:flutter_gpotter/presentation/pages/favorite_list_scren.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('d')),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          CardScreen(),
          FavoriteListScreen(),
          AuthorizationScreen(),
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
