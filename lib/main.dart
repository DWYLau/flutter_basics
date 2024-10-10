import "package:flutter/material.dart";
import "package:basics/gradient_container.dart";

void main() {
  // const - keyword to help Dart optimize runtime performance
  // allows Dart to reuse data that are the same
  runApp(
    const MaterialApp(
      home: Scaffold(
        // custom Widget GradientContainer
        body: GradientContainer(colors: [Colors.white, Colors.black]),
      ),
    ),
  );
}
