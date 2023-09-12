import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  //static String id = 'EditNoteViewBody';
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 16,),
    
          CustomTextField(hint: '',),
          SizedBox(height: 16,),
    
          CustomTextField(hint: '',maxLines: 5,)
        ],
      ),
    );
  }
}