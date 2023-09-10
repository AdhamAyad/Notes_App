import 'package:flutter/material.dart';
import 'package:note_sapp/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          SizedBox(height: 32 ,),
          
          CustomTextField(),
        ],
      ),
    );
  }
}