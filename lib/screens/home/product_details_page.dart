
import 'package:flutter/material.dart';
import 'package:generic_seeds/components/circular_icon_button.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class ProductDetailsPage extends StatelessWidget {
  final String product;
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: Dimensions.getHeight(250),
            automaticallyImplyLeading: false,
            pinned: true,
            title: PreferredSize(preferredSize: Size.fromHeight(Dimensions.getHeight(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularIconButton(icon: Icons.chevron_left),
                CircularIconButton(icon: Icons.shopping_basket_outlined),
              ],
            )),
          flexibleSpace: FlexibleSpaceBar(     
            background: Image.asset(product,fit:BoxFit.cover,width: double.maxFinite,)
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.getHeight(20)),
            child: Container(padding: EdgeInsets.all(Dimensions.getHeight(5)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.getHeight(15)),
                topRight: Radius.circular(Dimensions.getHeight(15),
                ))),
                width: double.maxFinite,
            
            child: Text("Product Name",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: Dimensions.getHeight(24),),),),
          ),
          ),

        ]),
    );
  }
}
