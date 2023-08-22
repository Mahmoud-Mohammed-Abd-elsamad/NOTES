import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note/add_note_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'add_note_validate.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {

  @override
  Widget build(BuildContext context) {
    AddNoteCubit provider = BlocProvider.of<AddNoteCubit>(context) ;

    return Padding(
      padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom,right: 16,left: 16),
      child: BlocBuilder<NotesCubit,NotesState>(builder: (BuildContext context, state) {
        return  const SingleChildScrollView(child: AddNoteValidate());
      },),
    );
  }
}