import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/navigation/navigation.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_screen.dart';

class HousesScreen extends StatelessWidget {
  const HousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: Text('Houses SCREEN')),
        MaterialButton(
            child: const Text('go wizards'),
            onPressed: () {
              NavigatorsPages.keyspages[1].currentState?.push(MaterialPageRoute(
                  builder: (context) => const WizartsScreen()));
            }),
      ],
    );
  }
}
