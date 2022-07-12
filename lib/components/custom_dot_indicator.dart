import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final int totalDots;
  final double currentPosition;
  const CustomDotIndicator(
      {Key? key, required this.currentPosition, required this.totalDots})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        dotsCount: totalDots,
        position: currentPosition,
        axis: Axis.horizontal,
      ),
    );
  }
}
