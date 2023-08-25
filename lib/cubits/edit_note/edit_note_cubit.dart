import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/edit_note/edit_note_state.dart';

class EditNoteCubit extends Cubit<EditNotetState>{
  EditNoteCubit() : super(EditNoteInitialState());

  int?  noteColorAtColorsList;

}