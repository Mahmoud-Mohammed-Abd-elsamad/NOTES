import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/add_bottom_sheet.dart';
import '../custom_widgets/custom_app_bar.dart';
import '../custom_widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0))),
              context: context,
              builder: (builder) {
                return AddBottomSheet();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          CustomAppBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotesListView(),
            ),
          )
        ]),
      ),
    );
  }
}
