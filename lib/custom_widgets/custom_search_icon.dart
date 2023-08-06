import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomIcon extends StatelessWidget {
   CostomIcon({required this.icon});

  IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: const BoxDecoration(
        color: Color(0xff3a3a3a),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child:IconButton(onPressed: (){}, icon:  Icon(icon),)
    );
  }
}