import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_sapp/models/note_model.dart';

import '../../widgets/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
 List<NoteModel>? notes; //? list that have all notes
  getAllNotes()
  {
    var notesBox = Hive.box<NoteModel>(kNotesBox); //! Hive.box<NoteModel>(kNotesBox) → take the box that we will store and get data in it as note model
    notes = notesBox.values.toList(); //! get values and convert it to list and after this put it on notes
    //! do not need to make state becuse it is one state and we not have to make it 
    // emit(NotesSuccess(notes!)); //? after adding the object change sate to success 
  }
}
