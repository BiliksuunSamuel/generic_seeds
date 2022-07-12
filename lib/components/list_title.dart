import 'package:flutter/material.dart';
import 'package:generic_seeds/constants/dimensions.dart';

class ListTitle extends StatelessWidget {
  final String leadingText;
  final String trailineText;
  const ListTitle({Key? key,required this.leadingText,required this.trailineText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return ListTile(
           leading:Text(leadingText,style:TextStyle(fontSize: Dimensions.getHeight(20),
           fontWeight: FontWeight.bold,
           color:Colors.black)),
           trailing: IconButton(icon: Icon( Icons.chevron_right,size: Dimensions.getHeight(24),), onPressed:(){},) ,
      
    );
  }
}
