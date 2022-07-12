import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:generic_seeds/constants/app_colors.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  double? iconSize = Dimensions.getHeight(22);
  Color? iconColor = const Color(AppColors.primaryColor);
  CustomIconButton({Key? key, required this.icon, this.iconColor, this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Icon(icon,size: iconSize,color: iconColor,),
    );
  }
}
