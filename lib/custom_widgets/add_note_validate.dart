
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/custom_widgets/color_item.dart';
import 'package:notes_app/models/notes_view_model.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import 'colrs_list_item.dart';
import 'custom_add_button.dart';
import 'custom_text_field.dart';

class AddNoteValidate extends StatefulWidget {
  const AddNoteValidate({Key? key}) : super(key: key);

  @override
  State<AddNoteValidate> createState() => _AddNoteValidateState();
}

class _AddNoteValidateState extends State<AddNoteValidate> {

  String? title,content;

  final  formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 32, bottom: 16, left: 0, right: 0),
              child: CustomFormTextField(
                hintText: 'Title', maxLines: 1,
                onSaved: (value){
                  title = value;

                },
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: 0, bottom: 0, left: 0, right: 0),
            child: CustomFormTextField(
              hintText: 'Content',
              maxLines: 5,  onSaved: (value){
              content = value;

            },
            ),
          ),
          const SizedBox(height: 25,),
          const ColorsListItem(),

          const SizedBox(height: 25,),
          CustomButton(onTap: ()  {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();

              DateTime now = DateTime.now();
              String formattedDate = DateFormat('dd-MM-yyyy').format(now);
              int colorIndex = BlocProvider.of<AddNoteCubit>(context).noteColorAtColorsList;

              NotesViewModel note =   NotesViewModel(color:kColorsList[colorIndex], title: title!,
                 content: content!, date: formattedDate);
              BlocProvider.of<AddNoteCubit>(context).addNote(note);

              BlocProvider.of<NotesCubit>(context).fetchaAllNotes();

              Navigator.pop(context);

            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}

