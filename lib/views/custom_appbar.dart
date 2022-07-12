import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_seeds/components/caption_label.dart';
import 'package:generic_seeds/constants/app_colors.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget CustomAppbar() {
  return AppBar(
   systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryTheme[500],
    systemNavigationBarColor: Colors.white,
    systemNavigationBarContrastEnforced: true,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.white,
    ),
  
    title: Container(
      decoration: BoxDecoration(color: AppColors.primaryTheme[900]),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(child:  CaptionLabel(text:"Heritage Seed",size: 24,color: Colors.white,),),
        InkWell(
          onTap: () {},
          child:const Icon(Icons.shopping_basket_outlined),
        ),
      ]),
    ),
  );
}
