import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_sapp/models/note_model.dart';

import '../../widgets/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes()
  {
    try{
    var notesBox = Hive.box<NoteModel>(kNotesBox); //! Hive.box<NoteModel>(kNotesBox) → take the box that we will store in it as note model
    // List<NoteModel> notes = notesBox.values.toList(); //! get values and convert it to list and sen it to state
    emit(NotesSuccess(notesBox.values.toList())); //? after adding the object change sate to success 
    }catch(e)
    {
      emit(NotesFailure(e.toString())); //? if have error change state and send the message of error
    }
  }
}
