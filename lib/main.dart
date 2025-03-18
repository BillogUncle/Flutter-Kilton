import 'package:flutter/material.dart';
import 'package:first_app/gradient_containter.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          outsideColor:  Color.fromARGB(255, 41, 166, 238),
          insideColor:  Color.fromARGB(255, 136, 182, 226),
          ),
      ),
    ),
  );
} // void main