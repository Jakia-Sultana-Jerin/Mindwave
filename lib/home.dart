import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         color: Theme.of(context).colorScheme.primary,
          image: DecorationImage(image: AssetImage("assets/images/background.png"),
          opacity: 0.4,
          repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
