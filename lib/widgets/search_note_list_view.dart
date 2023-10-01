import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';
import 'custom_note_item.dart';

class SearchNotesListView extends StatelessWidget {
  const SearchNotesListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(

        builder: (context, state) {
          //fetch filtered notes list
           BlocProvider.of<NotesCubit>(context).getAllNotes();
           List<NoteModel>? filteredNoteList= BlocProvider.of<NotesCubit>(context).filteredNoteList;
           List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
           
          return Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 4),

            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: filteredNoteList== null ? notes.length : filteredNoteList.length,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),

                  child: NoteItem(
                    note: filteredNoteList== null ? notes[index] : filteredNoteList[index] ,

                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}