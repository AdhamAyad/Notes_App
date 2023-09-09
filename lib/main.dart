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
      //? scaffoldBackgroundColor: Colors.black
      ), 
      home: const NotesView() ,
    );
  }
}