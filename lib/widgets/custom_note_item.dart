import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_sapp/models/note_model.dart';

import '../views/edit_note_view.dart';



class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(
            top: 24, bottom: 24, left: 16), // padding iside container around child
    
        decoration: BoxDecoration(
          color:  Color(note.color), // color of continer
          borderRadius: BorderRadius.circular(16), // حواف دائريه للكونتينار
        ),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end, // عشان التاريخ و اليوم يتحطو فى الاخر
    
          children: [
            ListTile(// todo: ListTile → take widgets and easier
              
              //?contentPadding:EdgeInsets.zero, // remove space that the listtile take
    
              title:  Text(//* title → first widget as column              
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
    
              subtitle: Padding(//* subtitle → sec widget as column
                padding: const  EdgeInsets.only(top: 16,bottom: 16),
                child: Text(               
                  note.subTitle,
                  style:
                       TextStyle(color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
    
              trailing: IconButton(//* traling → as row       
                onPressed: () {},
                icon:const Icon(
                  FontAwesomeIcons.trash,
                  size: 24,
                ),
                color: Colors.black,
              ),
            ),
    
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                //'${DateTime.parse(note.date).day}/${DateTime.parse(note.date).month}/${DateTime.parse(note.date).year}',
                style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16), //!withOpacity → الشفافيه للون 
              ),
            )
          ],
        ),
      ),
    );
  }
}