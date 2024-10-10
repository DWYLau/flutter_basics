import 'package:flutter/material.dart';
import 'dart:math';

// Stateful Widgets
// Widgets with State (data that changes)
// Widgets with States require two separate classes

// global variable
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// private class that is used in class DiceRoller
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // setState function to update the UI
    // setState tells Flutter to remount the Widget with the updated data

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text("Roll the dice"),
        ),
      ],
    );
  }
}
