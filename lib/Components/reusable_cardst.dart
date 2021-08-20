import 'package:flutter/material.dart';

class ReusableCardst extends StatelessWidget {
  ReusableCardst({required this.colour, required this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
