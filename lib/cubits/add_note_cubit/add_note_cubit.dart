import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_sapp/models/note_model.dart';
import 'package:note_sapp/widgets/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
  addNote(NoteModel note) async{
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
