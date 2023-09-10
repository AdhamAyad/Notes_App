import 'package:flutter/material.dart';

import '../widgets/add_note_buttom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){ // todo: bottmsheet flixable option
          return const AddNoteButtomSheet();
        });

      },
       child:const Icon(Icons.add),),

      body:const NotesViewBody(), //! code will be clean
    );
  }
}




