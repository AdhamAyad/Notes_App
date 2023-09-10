import 'package:flutter/material.dart';
import 'package:note_sapp/widgets/constants.dart';

class CustomTextField extends StatelessWidget { 
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1});//? this.maxLines = 1 → make defult
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor: kPrimaryColor, //! cursor color when write
      maxLines: maxLines, //! نسبه حجمه الطبيعى  , defult = 1

      decoration: InputDecoration(

        hintText: hint, //? hint text on text field
        hintStyle: const TextStyle(color: kPrimaryColor),//? change hinttext color

        border: buildBorder(),//? General Border
        enabledBorder: buildBorder(), //? enabledBorder → when textfield appear on screen
        focusedBorder: buildBorder(color: kPrimaryColor), //? focusedBorder → when user clicked on
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) { // todo: make border
    return OutlineInputBorder( 
        borderRadius: BorderRadius.circular(8), //! color?? → means if null use white
        borderSide: BorderSide(color: color?? Colors.white ) //? borderside → to change color
      );
  }
}