import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomIcon extends StatelessWidget {
   CostomIcon({required this.icon,this.onPressed});

  IconData icon ;
   void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: const BoxDecoration(
        color: Color(0xff3a3a3a),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child:IconButton(onPressed:onPressed, icon:  Icon(icon),)
    );
  }
}