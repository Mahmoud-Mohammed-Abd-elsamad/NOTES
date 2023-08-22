import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note/add_note_state.dart';
import 'add_note_validate.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {

  @override
  Widget build(BuildContext context) {
    AddNoteCubit provider = BlocProvider.of<AddNoteCubit>(context) ;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit,AddNoteState>(builder: (BuildContext context, state) {
        return SingleChildScrollView(child: AddNoteValidate());
      },
      listener: (BuildContext context, Object? state) {
        print("state changes $state");
       if(state is AddNoteStateLoding){
         provider.isLoding = true;
       }else if(state is AddNoteStateSuccess) {
         provider.isLoding = false;
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
           content: Text("Success add note"),)
         );
       }else if(state is AddNoteStateFailure){
         provider.isLoding = false;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage+"55555"),)
          );
          Navigator.pop(context);
          }
       setState(() {

       });
      },
      ),
    );
  }
}