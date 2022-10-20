import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Dear Friends, welcome to Harry Potter the wizarding world! Please enter to authorization',
                softWrap: true,
                style: myTheme().textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                child: const BottonPotter(value: 'login in'),
                onTap: () {
                  Navigator.pushNamed(context, 'login_screen');
                },
              ),
              GestureDetector(
                child: const BottonPotter(value: 'registration'),
                onTap: () {
                  Navigator.pushNamed(context, 'registration_screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
