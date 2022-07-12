
import 'package:flutter/material.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class HomeSliderItem extends StatelessWidget {
  final String imagePath;
  final Matrix4 matrix;
  const HomeSliderItem(
      {Key? key, required this.imagePath, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: Dimensions.getHeight(180),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:  EdgeInsets.symmetric(horizontal:  Dimensions.getHeight(20)),
                child: Container(
                  margin:  EdgeInsets.only(bottom:  Dimensions.getHeight(10)),
                  height: Dimensions.getHeight( Dimensions.getHeight(90)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(68, 153, 152, 152),
                          offset: Offset(0, 5)),
                     
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
