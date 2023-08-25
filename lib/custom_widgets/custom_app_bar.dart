import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title, required this.icon,this.onPreesd});

  final String title;
  final IconData icon;
  final void Function()? onPreesd;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(height: 100,),
        Text(title,style: TextStyle(fontSize: 24),),
        Spacer(),
        CostomIcon(icon: icon,onPressed:onPreesd ,)

      ],);
  }
}


