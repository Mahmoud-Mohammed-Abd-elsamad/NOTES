abstract class AddNoteState{}

class AddNoteStateInitial extends AddNoteState{}
class AddNoteStateLoding extends AddNoteState{}
class AddNoteStateSuccess extends AddNoteState{}
class AddNoteStateFailure extends AddNoteState{
  String errorMessage;
  AddNoteStateFailure({required this.errorMessage});
}
