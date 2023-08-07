import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap}) ;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,

          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: KPrimaryColor),
            child: Center(
                child: Text(
                  "Add",
                  style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),
                ))),
    );
  }
}
