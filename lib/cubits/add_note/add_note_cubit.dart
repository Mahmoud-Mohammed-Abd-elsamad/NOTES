import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note/add_note_state.dart';

import '../../models/notes_view_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteStateInitial());

  bool isLoding = false;
  int  noteColorAtColorsList = 2;

  addNote(NotesViewModel note) async {
    emit(AddNoteStateSuccess());
    try {
      var notesBox = Hive.box<NotesViewModel>(kNotesBoc);

      await notesBox.add((note) );
      emit(AddNoteStateSuccess());
    } catch (ex) {
      print("exseption" + ex.toString());
      emit(AddNoteStateFailure(errorMessage: ex.toString()));
    }
  }
}
