import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_sapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_sapp/models/note_model.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edite_notes_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  //static String id = 'EditNoteViewBody';
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title ,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
         const SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,onPressed: (){
            widget.note.title=title ?? widget.note.title; //?widget.note.title → to use object
            widget.note.subTitle=content ?? widget.note.subTitle; //?widget.note.title → to use object
            widget.note.save(); //! to save in hive
            BlocProvider.of<NotesCubit>(context).getAllNotes();
            Navigator.pop(context);
          },),
         const SizedBox(height: 50,),
    
          CustomTextFormField(hint: widget.note.title,onChanged: (value) {
            title =value;
           
         },),
         const SizedBox(height: 16,),
    
          CustomTextFormField(hint: widget.note.subTitle,maxLines: 5,onChanged: (value) {
            content = value;
          },),

          const SizedBox(height: 32,),

           EditNoteColorList(note: widget.note,),
        ],
      ),
    );
  }
}


