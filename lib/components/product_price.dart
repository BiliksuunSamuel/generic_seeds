import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:generic_seeds/constants/constants.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "${Constants.currency}8.00",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(width: Dimensions.getWidth(10)),
        const Text(
          "${Constants.currency}10.00",
          style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
              decoration: TextDecoration.lineThrough),
        ),
        SizedBox(width: Dimensions.getWidth(10)),
        const Text("pKg")
      ],
    );
  }
}
