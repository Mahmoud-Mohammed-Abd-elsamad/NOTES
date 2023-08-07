import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/notes_view_model.dart';
import 'package:notes_app/views/notes_view.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();

  // Open a Hive Box
  await Hive.openBox(kNotesBoc);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home: const NotesView()
    );}}

