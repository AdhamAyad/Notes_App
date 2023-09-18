import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_sapp/models/note_model.dart';
import 'package:note_sapp/widgets/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? color = const Color(0XFFA0E7E5); //? with defult value if user not access , and user can change it

  addNote(NoteModel note) async{
    //! befor store it in hive put it as defult or user chooses
    note.color = color!.value; //! to can be access by user 
    emit(AddNoteLoading()); //? when call the method yhe state will be loading while adding data
    try{
    var notesBox = Hive.box<NoteModel>(kNotesBox); //! Hive.box<NoteModel>(kNotesBox) → take the box that we will store in it as note model
    await notesBox.add(note); //! await notesBox.add(note) → thats store the object into box
    emit(AddNoteSuccess()); //? after adding the object change sate to success 
    }catch(e)
    {
      emit(AddNoteFailure(e.toString())); //? if have error change state and send the message of error
    }
    

  }
}
