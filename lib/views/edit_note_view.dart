import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/custom_widgets/custom_app_bar.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';
import 'package:notes_app/models/notes_view_model.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);

  final NotesViewModel note ;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {

  String? title ;
  String? content;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,right: 16,left:16 ),
            child: CustomAppBar(title:"${widget.note.title}", icon: Icons.check,onPreesd: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              BlocProvider.of<NotesCubit>(context).fetchaAllNotes();
              Navigator.pop(context);
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: "${widget.note.title}", maxLines: 1,onChanged: (value){
              title = value;
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: "${widget.note.content}", maxLines: 5,onChanged: (value){
              content = value;
            },),
          ),
          ],
      ),
    );
  }
}
