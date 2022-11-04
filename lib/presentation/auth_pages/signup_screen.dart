import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../generated/mobx/mail_validator.dart';
import '../pages/widgets_pages/potter_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'welcome',
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
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'password',
                        hintText: 'enter passwords',
                        errorText: mailCheck.error.password),
                    textAlign: TextAlign.center,
                    onChanged: (value) => mailCheck.password = value,
                  ),
                ),
                const SizedBox(height: 15.0),
                GestureDetector(
                    child: const BottonPotter(value: 'registered'),
                    onTap: () async {
                      setState(
                        () {
                          showSpinner = true;
                        },
                      );
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: mailCheck.email,
                                password: mailCheck.password);
                        if (newUser != null) {
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
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
