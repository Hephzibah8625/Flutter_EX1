import 'package:flutter/material.dart';
import 'package:cursed_tinder/background.dart';
import 'package:cursed_tinder/cards_stack.dart';

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: const [
              BackgroundWidget(),
              CardsStack(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MainApp());
}
