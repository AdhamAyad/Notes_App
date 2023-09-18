import 'package:flutter/material.dart';
import 'package:note_sapp/widgets/constants.dart';

class CustomTextFormField extends StatelessWidget { 
  const CustomTextFormField({super.key, required this.hint,  this.maxLines = 1, this.onSaved, this.onChanged});//? this.maxLines = 1 → make defult
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved, //! take data that into textfeild when saved
      cursorColor: kPrimaryColor, //! cursor color when write
      maxLines: maxLines, //! نسبه حجمه الطبيعى  , defult = 1

      validator: (value) { //? validator → check for data is its empty
        if (value?.isEmpty?? true) {
          return'Feild Is Reqired';
        }else{
          return null;
        }
      },

      decoration: InputDecoration(

        hintText: hint, //? hint text on text field
        //hintStyle: const TextStyle(color: kPrimaryColor),//? change hinttext color

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