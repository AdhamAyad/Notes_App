import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),// make space from left and right 
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),

          SizedBox(height: 8,), // make space

          Expanded(child: NotesListView()), // todo: Expanded → to approve his child to take all space that it can

          
        ],
      ),
    );
  }
}



