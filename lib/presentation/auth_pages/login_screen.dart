import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';

import '../../generated/mobx/mail_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
  final mailCheck = EmailCheck();
  bool showSpinner = false;

  @override
  void initState() {
    super.initState();
    mailCheck.setupValidators();
  }

  @override
  void dispose() {
    mailCheck.dispose();
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
                      labelText: 'email',
                      hintText: 'enter email',
                      errorText: mailCheck.error.email),
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) => mailCheck.email = value,
                ),
              ),
              const SizedBox(height: 15.0),
              Observer(
                builder: (_) => TextField(
                  decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'enter password min 8 characteres',
                      errorText: mailCheck.error.password),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) => mailCheck.password = value,
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
                        email: mailCheck.email, password: mailCheck.password);
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
