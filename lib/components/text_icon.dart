import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  double? textSize = Dimensions.getHeight(16);
  Color? textColor = Colors.black54;
  Color? iconColor = Colors.black45;
  double? iconSize = Dimensions.getHeight(18);

  TextIcon(
      {Key? key,
      required this.icon,
      required this.text,
      this.iconSize,
      this.textColor,
      this.textSize,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: textSize),
        )
      ],
    );
  }
}
