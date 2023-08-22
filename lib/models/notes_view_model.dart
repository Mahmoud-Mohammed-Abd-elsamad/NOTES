
import 'package:hive_flutter/adapters.dart';

part 'notes_view_model.g.dart';
@HiveType(typeId: 0)
class NotesViewModel extends HiveObject{
  @HiveField(0)
   String title;
  @HiveField(1)
   String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NotesViewModel({ required this.color,
    required this.title,required  this.content,
    required this.date});

}