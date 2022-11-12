import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/tab_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'internal/enums.dart';
import 'internal/theme/theme_state.dart';
import 'internal/theme/themes_my_themdata.dart';
import 'presentation/auth_pages/login_screen.dart';
import 'presentation/auth_pages/signup_screen.dart';
import 'presentation/auth_pages/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final storage = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeState(storage),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (BuildContext context) {
          return const MyApp2();
        },
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(builder: ((context, state, child) {
      return MaterialApp(
        themeMode: state.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: 'welcome_screen',
        theme: myTheme(getScreenSize(context).index),
        darkTheme: myDarkTheme(getScreenSize(context).index),
        routes: {
          'welcome_screen': (context) => const WelcomeScreen(),
          'registration_screen': (context) => const RegistrationScreen(),
          'login_screen': (context) => const LoginScreen(),
          'home_screen': (context) => const TabScreen()
        },
      );
    }));
  }
}

// dart pub global activate flutterfire_cli
// flutter pub run build_runner build

ScreenSize getScreenSize(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > 900) return ScreenSize.extraLarge;
  if (deviceWidth > 600) return ScreenSize.large;
  if (deviceWidth > 300) return ScreenSize.normal;
  return ScreenSize.small;
}
