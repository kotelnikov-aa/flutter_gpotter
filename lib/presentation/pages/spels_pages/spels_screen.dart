import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class SpelsScreen extends StatelessWidget {
  const SpelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Elixirs name'),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Effect - '),
                  Text('elixir effect'),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text('Side effects - '),
                  Text('elixir Side effects '),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text('difficulty- '),
                  Text('difficulty exilirs'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
