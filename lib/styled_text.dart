import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    this.text = 'The text is Green, just like a leaf',
    this.textColour = const Color.fromARGB(255, 85, 168, 106),
    super.key
    });

  final String text;
  final Color textColour;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: textColour,
        //color: Color.fromARGB(255, 85, 168, 106),
        fontSize: 15,
        ), 
      );

  } // Widget build
} // class