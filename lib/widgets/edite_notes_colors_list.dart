import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'constants.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

  late int currentIndex;
  @override
  void initState() {
    //! currentIndex = colorindex to be selected
    currentIndex = kColors.indexOf(Color(widget.note.color));//? عشان لما افتح الايديت الاقى لون النوت متعلم عليه
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 52, // todo: radius: 26, 26*2 = 52
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child:  GestureDetector(
            onTap: () {
              currentIndex = index; //! when click give currentIndex same value of index
              widget.note.color = kColors[index].value; //! take color that user choose and store
              
              setState(() {
                
              });
            },//! when currentIndex same value of index return true and change UI
            child: ColorItem(isSelected: currentIndex == index, color: kColors[index],)),
        );
      }),
    );
  }
}