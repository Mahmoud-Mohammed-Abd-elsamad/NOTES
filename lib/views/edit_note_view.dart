import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_app_bar.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,right: 16,left:16 ),
            child: CustomAppBar(title:"Edit Note", icon: Icons.check,),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: "Title", maxLines: 1),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: "content", maxLines: 5),
          ),
          ],
      ),
    );
  }
}
