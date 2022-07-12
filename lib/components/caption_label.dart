import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaptionLabel extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const CaptionLabel({Key? key, required this.text, required this.color,required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
