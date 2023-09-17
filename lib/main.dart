import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_sapp/models/note_model.dart';
import 'package:note_sapp/views/notes_view.dart';
import 'package:note_sapp/widgets/constants.dart';

void main() async{

  await Hive.initFlutter(); //! make it to start Hive
  await Hive.openBox(kNotesBox); //! box that we will store inside
  Hive.registerAdapter(NoteModelAdapter()); //! to start stor as this model

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 

      theme: ThemeData(brightness: Brightness.dark,// todo: cahnge theme  of app , themdata.dark()
      //? scaffoldBackgroundColor: Colors.black, // make theme with color black
      fontFamily: 'Poppins' //! this font will apply on all app
      ), 
      
      home: const NotesView() ,
    );
  }
}