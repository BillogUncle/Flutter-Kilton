import 'package:flutter/material.dart';
import 'dice_roller.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {

  const GradientContainer({
    super.key,
    this.insideColor = const Color.fromARGB(255,255,255,255),
    this.outsideColor = const Color.fromARGB(255, 9, 138, 143),
    this.colorRadius = 1.1,
    this.displayText = "Hello World",
    this.textColor = const Color.fromARGB(255, 0, 0, 0),
  });

  final Color insideColor;
  final Color outsideColor;
  final double colorRadius;
  final String displayText;
  final Color textColor;

  @override
  Widget build(context) {
    return Container(

          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: colorRadius,
              colors: [
                insideColor,
                outsideColor, 
                ],
            ),
          ),

          child: const Center(
            child: DiceRoller(),
          ), 
    );
  }
}