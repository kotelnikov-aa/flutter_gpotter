import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../pages/widgets_pages/potter_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner = false;
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
                TextField(
                  decoration: const InputDecoration(labelText: 'enter email'),
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(height: 15.0),
                TextField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(labelText: 'enter password'),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
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
                                email: email, password: password);
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
