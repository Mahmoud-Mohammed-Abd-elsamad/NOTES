import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({ this.onSaved,required this.hintText, required this.maxLines ,this.onChanged} );
 final String hintText;
  final int maxLines;
 final  void Function(String?)? onSaved ;
   void Function(String)? onChanged;

@override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
        validator: (value){
        if(value?.isEmpty ?? true){
          return("this field is required");
        }else{
          return null;
        }
        },
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
