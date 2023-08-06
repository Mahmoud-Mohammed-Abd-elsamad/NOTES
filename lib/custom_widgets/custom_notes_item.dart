import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xfffecd7e),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32,right: 16,top: 32,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ListTile(
            title:Text("Flutter tips",style: TextStyle(fontSize: 25,color: Colors.black),),
            subtitle:Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("Build your career with tharwat Samy ",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(.5)),),
            ),
            trailing: IconButton(color: Colors.black, onPressed: () {  },  icon:Icon(Icons.delete,size: 32,)),),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text("May 21,2022",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(.5)),),),

        ],),
      ),

    );
  }
}
