import "package:basics/dice_roller.dart";
import "package:flutter/material.dart";

// Break down the big Widget trees and make custom Widgets(like React components)
// Inherit from StatelessWidget to make a custom Widget
// custom Widget GradientContainer

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  // constructor method
  const GradientContainer({
    required this.colors,
    super.key,
  });

  // alternative constructor function
  const GradientContainer.blue({super.key})
      : colors = const [Colors.lightBlue, Colors.deepPurple];

  final List<Color> colors;

  // type(Widget) function(build())
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
