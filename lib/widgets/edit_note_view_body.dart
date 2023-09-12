import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  //static String id = 'EditNoteViewBody';
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 32,),
        CustomAppBar(),
        SizedBox(height: 16,),

        CustomTextField(hint: '',),
        SizedBox(height: 16,),

        CustomTextField(hint: '',maxLines: 5,)
      ],
    );
  }
}