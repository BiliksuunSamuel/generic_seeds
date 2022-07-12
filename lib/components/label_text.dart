import 'package:flutter/material.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class LabelText extends StatelessWidget {
  final String text;
  Color? color = Colors.black38;
  double? size = Dimensions.getWidth(16);
  LabelText({Key? key, required this.text, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
