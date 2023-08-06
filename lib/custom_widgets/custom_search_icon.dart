import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Color(0xff3a3a3a),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child:IconButton(onPressed: (){}, icon: const Icon(Icons.search),)
    );
  }
}