import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/edit_note/edit_note_cubit.dart';

import '../constants.dart';
import '../cubits/add_note/add_note_cubit.dart';
import 'color_item.dart';

class ColorsListItem extends StatefulWidget {
  const ColorsListItem({Key? key}) : super(key: key);

  @override
  State<ColorsListItem> createState() => _ColorsListItemState();
}

class _ColorsListItemState extends State<ColorsListItem> {
  int  itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42 * 2,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context,index){
        return   GestureDetector(onTap: (){
          setState(() {
            BlocProvider.of<AddNoteCubit>(context).noteColorAtColorsList = index;
            itemCount = index;
          });
        },child: ColorItem(backgroundColor: Color(kColorsList[index]), containerBackgroundColor: itemCount == index ? Colors.white : Colors.transparent,)
        );
      }),
    );
  }
}




class EdotColorsListItem extends StatefulWidget {
   EdotColorsListItem({Key? key, required this.colorEditIndex}) : super(key: key);

   int colorEditIndex ;

  @override
  State<EdotColorsListItem> createState() => _EdotColorsListItemState();
}

class _EdotColorsListItemState extends State<EdotColorsListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42 * 2,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context,index){
        return   GestureDetector(onTap: (){
          print("index $index");
          setState(() {
            BlocProvider.of<EditNoteCubit>(context).noteColorAtColorsList = index;
            widget.colorEditIndex = index;
          });
        },child: ColorItem(backgroundColor: Color(kColorsList[index]), containerBackgroundColor: widget.colorEditIndex == index ? Colors.white : Colors.transparent,)
        );
      }),
    ); ;
  }
}

