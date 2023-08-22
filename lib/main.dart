import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_view_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NotesViewModelAdapter());
  // Open a Hive Box
  await Hive.openBox<NotesViewModel>(kNotesBoc);

  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider
          (create: (context)=>AddNoteCubit()),
    BlocProvider (create: (context)=>NotesCubit())
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
        home: const NotesView()
      ),
    );}}

