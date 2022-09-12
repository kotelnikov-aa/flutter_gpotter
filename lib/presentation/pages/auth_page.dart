import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/tabscreen.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('good enter'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabScreen(),
              ));
        },
      ),
    );
  }
}
