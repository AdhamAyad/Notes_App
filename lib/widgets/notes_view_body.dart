import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),// make space from left and right 
      child: Column(
        children:  [

          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search_outlined,), // Custom AppBar

          SizedBox(height: 16,), // make space

          Expanded(child: NotesListView()), // todo: Expanded → to approve his child to take all space that it can

          
        ],
      ),
    );
  }
}



