import 'package:flutter/material.dart';
import 'package:generic_seeds/components/caption_label.dart';
import 'package:generic_seeds/components/custom_icon_button.dart';
import 'package:generic_seeds/components/label_text.dart';
import 'package:generic_seeds/components/product_price.dart';
import 'package:generic_seeds/components/text_icon.dart';
import 'package:generic_seeds/constants/dimensions.dart';
import 'package:generic_seeds/screens/home/product_details_page.dart';
import 'package:get/get.dart';

class HomeProductView extends StatelessWidget {
  final String imagePath;
  const HomeProductView({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>Get.to(()=> ProductDetailsPage(product: imagePath),transition: Transition.fadeIn),
      child: Container(
          padding: EdgeInsets.all(Dimensions.getHeight(10)),
          child: Row(
            children: [
              Container(
                width: Dimensions.getWidth(120),
                height: Dimensions.getHeight(120),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(Dimensions.getHeight(5)),
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CaptionLabel(
                          text: "Genetic Maize Seeds",
                          color: Colors.black,
                          size: Dimensions.getHeight(22)),
                      SizedBox(
                        height: Dimensions.getHeight(5),
                      ),
                      const ProductPrice(),
                      SizedBox(
                        height: Dimensions.getHeight(5),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: Dimensions.getWidth(15),
                                    )),
                          ),
                          SizedBox(
                            width: Dimensions.getWidth(5),
                          ),
                          TextIcon(
                            icon: Icons.thumb_up,
                            text: "100",
                            iconColor: Colors.black38,
                            iconSize: Dimensions.getWidth(14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.getHeight(5),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelText(text: "Free Delivery"),
                          CustomIconButton(
                            icon: Icons.shopping_cart_outlined,
                            iconSize: Dimensions.getHeight(18),
                          ),
                        ],
                      )
                    ]),
              ))
            ],
          )),
    );
  }
}
