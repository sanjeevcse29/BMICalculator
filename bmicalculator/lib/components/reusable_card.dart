import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // create object for ReusableCard class
  ReusableCard(
      {required this.color, required this.cardChild, required this.onPres});

  final Color color;
  final Widget cardChild;
  final void Function()? onPres;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPres,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
