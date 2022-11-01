import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';

import 'login_mobx_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  bool showSpinner = false;
  final eCheck = EmailCheck();

  @override
  void initState() {
    eCheck.setupValidators();
    super.initState();
  }

  @override
  void dispose() {
    eCheck.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'please,',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 15.0),
              Observer(
                builder: (_) => TextField(
                  decoration: InputDecoration(
                      labelText: 'enter email', errorText: eCheck.error.email),
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) => eCheck.email = value,
                ),
              ),
              const SizedBox(height: 15.0),
              Observer(
                builder: (_) => TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'enter password',
                      errorText: eCheck.error.password),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
              const SizedBox(height: 15.0),
              GestureDetector(
                child: const BottonPotter(value: 'login in'),
                onTap: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, 'home_screen');
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(e.toString()),
                    ));
                  }
                  setState(() {
                    showSpinner = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
