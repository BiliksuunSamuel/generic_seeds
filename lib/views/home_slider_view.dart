import 'package:flutter/material.dart';
import 'package:generic_seeds/components/home_slider_item.dart';
import 'package:generic_seeds/constants/dimensions.dart';
import 'package:generic_seeds/resources/resources.dart';

class HomeSlideView extends StatefulWidget {
  const HomeSlideView({Key? key}) : super(key: key);

  @override
  State<HomeSlideView> createState() => _HomeSlideViewState();
}

class _HomeSlideViewState extends State<HomeSlideView> {
  final double scaleFactor = 0.85;
  Matrix4 matrix = Matrix4.identity();
  double currentPageValue = 0.0;
  final PageController controller = PageController(viewportFraction: 0.85);

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top:  Dimensions.getHeight(10), bottom:  Dimensions.getHeight(10)),
      color: Colors.white,
      height:  Dimensions.getHeight(270),
      child:
         PageView.builder(
          controller: controller,
          itemCount: Resources.homeSliderData.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == currentPageValue.floor()) {
              double currentScale =
                  1 - (currentPageValue - index) * (1 - scaleFactor);
              double currentTrans =  Dimensions.getHeight(180) * (1 - currentScale) / 2;
              matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                ..setTranslationRaw(0, currentTrans, 0);
            } else if (index == currentPageValue.floor() + 1) {
              double currentScale = scaleFactor +
                  (currentPageValue - index + 1) *
                  (1 - scaleFactor);
              double currentTrans =  Dimensions.getHeight(180) * (1 - currentScale) / 2;
              matrix = Matrix4.diagonal3Values(1, currentScale, 1);
              matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                ..setTranslationRaw(0, currentTrans, 0);
            } else if (index == currentPageValue.floor() - 1) {
              double currentScale =
                  1 - (currentPageValue - index) * (1 - scaleFactor);
              double currentTrans =  Dimensions.getHeight(180) * (1 - currentScale) / 2;
              matrix = Matrix4.diagonal3Values(1, currentScale, 1);
              matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                ..setTranslationRaw(0, currentTrans, 0);
            } else {
              double currentScale = 0.8;
              matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                ..setTranslationRaw(0,  Dimensions.getHeight(180) * (1 - scaleFactor) / 2, 0);
            }
            return HomeSliderItem(
              imagePath: Resources.homeSliderData[index],
              matrix: matrix,
            );
          }),
    );
  }
}
