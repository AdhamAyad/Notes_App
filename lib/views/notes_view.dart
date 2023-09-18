import 'package:flutter/material.dart';
import '../widgets/add_note_buttom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
            bottom: 16), // move floating action buttom from buttom

        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                //! to edit on buyyomsheet→edit on it directily, and to make it
                isScrollControlled:
                    true, //? enaable botton sheet to scroll when keyboard uses
                //? decoration of buttom sheet
                shape: RoundedRectangleBorder(
                    // ? shape → to edit on bottomsheet
                    borderRadius:
                        BorderRadius.circular(16) // make it circuler
                    ),

                //? what will show when buttomsheet appear
                context: context,
                builder: (context) {
                  // todo: bottmsheet flixable option
                  return const AddNoteButtomSheet(); //? that inside bottomsheet
                });
          },
          child: const Icon(Icons.add),
        ),
      ),

      body: const NotesViewBody(), //! code will be clean
    );
  }
}
