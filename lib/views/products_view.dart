import 'package:flutter/cupertino.dart';
import 'package:generic_seeds/views/home_product_view.dart';

class ProductsView extends StatelessWidget {
  final List<String> products;
  const ProductsView({Key? key,required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: (products.length/2).floor(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return HomeProductView(
              imagePath: products[index],
            );
          }),
    ));
  }
}
