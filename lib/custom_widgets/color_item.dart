import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatefulWidget {
   ColorItem({Key? key, required this.backgroundColor, required this.containerBackgroundColor}) : super(key: key);
  final Color backgroundColor ;
   Color containerBackgroundColor ;


  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {



  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.all(1.0),
      child: CircleAvatar(
          radius: 42,
          backgroundColor:widget.containerBackgroundColor,
          child: CircleAvatar( radius: 38,backgroundColor: widget.backgroundColor)),
    );
  }
}
