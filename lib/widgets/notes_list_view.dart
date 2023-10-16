import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_sapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_sapp/models/note_model.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
   NotesListView({super.key});
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit, NotesState>( //? BlocBuilder → to rebuild UI
    listener: (context, state) {
      if(state is NotesSuccess)
      {
        _controller.animateTo(0,
                          duration:const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
      }
    },
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
         //notes.reversed;
         var reversedNotes = notes.reversed.toList();//? to revers our list that contains nots
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            controller: _controller,
            itemCount: notes.length,//? counting by list lenght
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(note: reversedNotes[index],),
                );
              }),
        );
      },
    );
  }
}
