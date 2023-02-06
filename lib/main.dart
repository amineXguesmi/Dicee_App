import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 2;
  void press() {
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      RightDiceNumber = random.nextInt(6) + 1;
    });
  }

  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                child: Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: () {
                  press();
                },
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                child: Image.asset("images/dice$RightDiceNumber.png"),
                onPressed: () {
                  press();
                },
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
