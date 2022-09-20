import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/auth_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthorizationScreen(),
    );
  }
}
