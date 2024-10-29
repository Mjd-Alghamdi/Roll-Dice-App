import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({super.key, required this.num1, required this.num2});

  final int num1;
  final int num2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset("assets/dice-$num1.png"),
        ),
        Expanded(
          child: Image.asset("assets/dice-$num2.png"),
        ),
      ],
    );
  }
}
