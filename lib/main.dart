import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/presentation/pages/tab_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'presentation/auth_pages/login_screen.dart';
import 'presentation/auth_pages/signup_screen.dart';
import 'presentation/auth_pages/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      theme: myTheme(),
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'home_screen': (context) => const TabScreen(),
      },
    );
  }
}

// dart pub global activate flutterfire_cli
