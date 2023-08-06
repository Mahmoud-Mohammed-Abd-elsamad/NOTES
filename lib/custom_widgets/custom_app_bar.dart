import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 100,),
        Text("Notes",style: TextStyle(fontSize: 24),),
        Spacer(),
        CostomSearchIcon()

      ],);
  }
}


