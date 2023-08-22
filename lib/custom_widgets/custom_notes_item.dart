import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_view_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key, required this.note}) : super(key: key);

  final NotesViewModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView(note: note,)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xfffecd7e),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 32, right: 16, top: 32, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.content,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(.5)),
                  ),
                ),
                trailing: IconButton(
                    color: Colors.black,
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchaAllNotes();
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 32,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  note.date,
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
