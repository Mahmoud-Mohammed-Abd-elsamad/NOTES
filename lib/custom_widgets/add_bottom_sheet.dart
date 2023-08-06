import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

import 'custom_add_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 32, bottom: 16, left: 0, right: 0),
                child: CustomTextField(
                  hintText: 'Title',
                  maxLines: 1,
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 16, left: 0, right: 0),
                child: CustomTextField(
                  hintText: 'Content',
                  maxLines: 5,
                ),
               ),
            SizedBox(height: 50,),
            CustomButton(),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
