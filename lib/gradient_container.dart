import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
    : firstColor = const Color.fromARGB(255, 120, 76, 240),
      secondColor = const Color.fromARGB(255, 91, 48, 209);

  final Color firstColor;
  final Color secondColor;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
