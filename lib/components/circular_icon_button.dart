import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class CircularIconButton extends StatelessWidget {
  Color? color;
  Color? iconColor;
  final IconData icon;
  CircularIconButton(
      {Key? key,
      this.color = Colors.white,
      required this.icon,
      this.iconColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Dimensions.getWidth(40),
      height: Dimensions.getHeight(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.getHeight(40)),
        color: color,
      ),
      child: Center(child: IconButton(
          onPressed: () {},
          color: iconColor,
          icon: Icon(
            icon,
            size: Dimensions.getHeight(24),
          ))),
    );
  }
}
