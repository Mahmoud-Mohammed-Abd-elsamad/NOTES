import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_note_validate.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:AddNoteValidate(),
      ),
    );
  }
}