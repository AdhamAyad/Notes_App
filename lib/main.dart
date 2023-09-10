import 'package:flutter/material.dart';
import 'package:note_sapp/views/notes_view.dart';

void main() {
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