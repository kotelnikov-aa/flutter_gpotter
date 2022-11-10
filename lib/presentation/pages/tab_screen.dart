import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/generated/mobx/tab_screen_mobx.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/internal/search_page.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  final mobxState = TabScreenState();
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    mobxState.setupValidators();
    getCurrentUser();
  }

  @override
  void dispose() {
    super.dispose();
    mobxState.dispose();
  }

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          DataFromScreenSize.appbarSize[getScreenSize(context).index],
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Observer(
              builder: (_) => Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  mobxState.getAppbarTitle,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>
                        SearchPage(currentIndex: mobxState.currentIndex)));
              },
              icon: const Icon(Icons.search),
              color: secondaryColorDark,
            ),
            Observer(
              builder: (_) => TextButton(
                onPressed: mobxState.changeSorting,
                child: Icon(
                  Icons.list,
                  color: mobxState.getSortingColor,
                ),
              ),
            ),
            Observer(
              builder: (_) => TextButton(
                onPressed: mobxState.changeFavorite,
                child: FaIcon(
                  FontAwesomeIcons.star,
                  color: mobxState.getFavoriteColor,
                ),
              ),
            ),
            Switch(
              value: themeState.isDark,
              onChanged: (value) {
                value ? themeState.setDarkTheme() : themeState.setLightTheme();
              },
            ),
          ],
        ),
      ),
      body: Observer(
        builder: (_) => IndexedStack(
            index: mobxState.currentIndex, children: mobxState.stackList),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          currentIndex: mobxState.currentIndex,
          onTap: mobxState.changeTab,
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
          ],
        ),
      ),
    );
  }
}
