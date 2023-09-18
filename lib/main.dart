import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_sapp/models/note_model.dart';
import 'package:note_sapp/simple_bloc_observer.dart';
import 'package:note_sapp/views/notes_view.dart';
import 'package:note_sapp/widgets/constants.dart';

void main() async{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter(); //! make it to start Hive
  await Hive.openBox(kNotesBox); //! box that we will store inside
  Hive.registerAdapter(NoteModelAdapter()); //! to start stor as this model

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( //! MultiBlocProvider →  to make one cubit or more
      providers: [
        BlocProvider(create: (context)=> AddNoteCubit()), //? starts addnotecubit
      ],
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false, 
        theme: ThemeData(brightness: Brightness.dark,// todo: cahnge theme  of app , themdata.dark()
        //? scaffoldBackgroundColor: Colors.black, // make theme with color black
        fontFamily: 'Poppins' //! this font will apply on all app
        ), 
        
        home: const NotesView() ,
      ),
    );
  }
}