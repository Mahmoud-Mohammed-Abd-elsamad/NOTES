import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_app_bar.dart';
import '../custom_widgets/custom_notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(),
            NotesItem(),
          ]
        ),
      ),
    );
  }
}
