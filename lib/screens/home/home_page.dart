import 'package:flutter/material.dart';
import 'package:generic_seeds/components/custom_dot_indicator.dart';
import 'package:generic_seeds/components/home_slider_item.dart';
import 'package:generic_seeds/components/list_title.dart';
import 'package:generic_seeds/constants/dimensions.dart';
import 'package:generic_seeds/resources/resources.dart';
import 'package:generic_seeds/views/custom_appbar.dart';
import 'package:generic_seeds/views/home_product_view.dart';
import 'package:generic_seeds/views/home_slider_view.dart';
import 'package:generic_seeds/views/products_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          children: [
            const HomeSlideView(),
            CustomDotIndicator(
                currentPosition: 1, totalDots: Resources.homeSliderData.length),
            SizedBox(
              height: Dimensions.getHeight(10),
            ),
            const ListTitle(
              leadingText: "Agro Chemicals",
              trailineText: "View All",
            ),
            const ProductsView(
              products: Resources.chemicals,
            ),
            const ListTitle(
              leadingText: "Food Stuffs",
              trailineText: "View All",
            ),
            const ProductsView(
              products: Resources.foods,
            ),
          ],
        ));
  }
}
