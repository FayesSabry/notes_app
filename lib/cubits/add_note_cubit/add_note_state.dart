part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}

class AddNoteLoading extends AddNoteState {}
