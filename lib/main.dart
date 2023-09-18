import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_sapp/models/note_model.dart';
import 'package:note_sapp/simple_bloc_observer.dart';
import 'package:note_sapp/views/notes_view.dart';
import 'package:note_sapp/widgets/constants.dart';

import 'cubits/notes_cubit/notes_cubit.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver(); //? put it in main to enable it to work
  await Hive.initFlutter(); //! make it to start Hive
  Hive.registerAdapter(
      NoteModelAdapter()); //! to start stor as object of this model
  await Hive.openBox<NoteModel>(
      kNotesBox); //! box that we will store inside with model type

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(), //? to get data
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness:
                Brightness.dark, // todo: cahnge theme  of app , themdata.dark()
            //? scaffoldBackgroundColor: Colors.black, // make theme with color black
            fontFamily: 'Poppins' //! this font will apply on all app
            ),
        home: const NotesView(),
      ),
    );
  }
}
