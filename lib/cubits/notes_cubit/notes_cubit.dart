import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';

import '../../constants.dart';
import '../../models/notes_view_model.dart';

class NotesCubit  extends Cubit<NotesState>{
  NotesCubit():super(NotesInitialstate());

  List<NotesViewModel>? notesList = [];

  fetchaAllNotes() {
      var notesBox = Hive.box<NotesViewModel>(kNotesBoc);

      notesList =  notesBox.values.toList();


  }

}