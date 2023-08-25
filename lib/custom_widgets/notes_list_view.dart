import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/notes_view_model.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {



  @override
  Widget build(BuildContext context) {


        return BlocBuilder<NotesCubit,NotesState>(

          builder: (BuildContext context, state) {
            List<NotesViewModel>  notesList = BlocProvider.of<NotesCubit>(context).notesList ?? []  ;



            return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: NotesItem(note: notesList[index],),
                  );
                });
          }
        );



  }
}