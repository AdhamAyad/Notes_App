part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {} // todo: class that we use in cubit and all classes extends from it

final class AddNoteInitial extends AddNoteState {} //? intial state
final class AddNoteLoading extends AddNoteState {} //? whenn loading state
final class AddNoteSuccess extends AddNoteState {} //? when it is success
final class AddNoteFailure extends AddNoteState {//? when go error
  final String errMessage;//* to take message error with state
  AddNoteFailure(this.errMessage); //? constructor
} 
