import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller ({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 2;
  var rollCount = 0;

  void rollDice() { 
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
      rollCount = rollCount + 1;
    });
  }

  @override
  Widget build(context) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', 
          width: 200
          ),
        const SizedBox(
          height: 20,
          ),

            //This button demonstrates how to add functionality to a button by creating a 
            //function inplace (Known as an anonymous function), it has no name and so can
            //only be used by this button
        TextButton(
          onPressed: () {
            setState(() {
              currentDiceRoll = randomizer.nextInt(6)+1;
            });
            rollCount = rollCount + 1;
          },
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(150, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 20,
            )
          ),

          child: const Text('Press Me')
          ),

            //This button exists to demonstrate the other way to add a function to a button press,
            // this method uses a predetermined function called "rollDice" (Line 19)
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(150, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 20,
            )
          ),
          child: const Text('No No No... Press Me')
          ),
        
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(150, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 20,
            )
          ),
          child: const Text('No. of times rolled: rollCount')
          ),

        ]
    );
  }
}