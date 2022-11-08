import 'package:flutter/material.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import 'package:local_auth/local_auth.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  Future<void> _authenticateWithBiometrics(BuildContext context) async {
    bool authenticated = false;
    final LocalAuthentication auth = LocalAuthentication();
    authenticated = await auth.authenticate(
      localizedReason:
          'Scan your fingerprint (or face or whatever) to authenticate',
      options: const AuthenticationOptions(
        stickyAuth: true,
        biometricOnly: true,
      ),
    );
    if (authenticated) {
      Navigator.pushNamed(context, 'home_screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Text(
                'Dear Friends, welcome to Harry Potter the wiQzarding world! Please enter to authorization',
                softWrap: true,
                style: Theme.of(context).textTheme.headline4,
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
              GestureDetector(
                child: const BottonPotter(value: 'fingerprint'),
                onTap: () {
                  _authenticateWithBiometrics(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
