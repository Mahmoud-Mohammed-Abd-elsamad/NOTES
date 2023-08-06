import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({ required this.hintText, required this.maxLines  });
  String hintText;
  int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1,color: KPrimaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KPrimaryColor)
          )
        ) , maxLines:maxLines ,

    );
  }
}
