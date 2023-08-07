import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note/add_note_state.dart';
import 'add_note_validate.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:BlocConsumer<AddNoteCubit,AddNoteState>(builder: (BuildContext context, state) {
          return AddNoteValidate();
        },
        listener: (BuildContext context, Object? state) {  },
        ),
      ),
    );
  }
}