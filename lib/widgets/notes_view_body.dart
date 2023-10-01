import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import '../views/search_note_view.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  // void initState() {
  //  BlocProvider.of<NotesCubit>(context).getAllNotes();
  //   super.initState();
  // }
  
  Widget build(BuildContext context) {
    
    //initState();
     BlocProvider.of<NotesCubit>(context).getAllNotes(); //! befor build body run method to get data
    
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),// make space from left and right 
      child: Column(
        children:  [

         const SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search_outlined,onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SearchNote();
            }));
     
          },), // Custom AppBar

         const SizedBox(height: 16,), // make space
         
         const Expanded(child: NotesListView()), // todo: Expanded → to approve his child to take all space that it can
          
        ],
      ),
    );
  }
}



