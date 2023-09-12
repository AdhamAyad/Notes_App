import 'package:flutter/material.dart';
import 'package:note_sapp/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(//! make page scrollable , make her child take small space
        child: Column(
          children:  [
            SizedBox(height: 32 ,),
            
            CustomTextField(hint: 'Title',),//* maxLines: 1 → as defult
      
            SizedBox(height: 16,),
      
            CustomTextField(hint: 'Content', maxLines: 5,), //? 4 → كدا بخليه اربع اضعاف حجمه الطبيعى
            
            SizedBox(height: 40,),
            
            CustomButton(),

            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}

