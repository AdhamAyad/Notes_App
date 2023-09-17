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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey <FormState> formKey = GlobalKey();//? key for form to can run

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title,subTitle; //? if variable not const or final must puted in stateful

  @override
  Widget build(BuildContext context) {
    return  Form(
      autovalidateMode: autovalidateMode, // todo: to work with form
      key: formKey, // todo: get key with FormState type

      child:  Column(
        children:  [
         const SizedBox(height: 32 ,),
          
          CustomTextFormField(hint: 'Title',onSaved: (value) {
            title= value;
            
          },),//* maxLines: 1 → as defult
        
         const SizedBox(height: 16,),
        
          CustomTextFormField(hint: 'Content', maxLines: 5,onSaved: (value) {
            subTitle= value;
            
          },), //? 4 → كدا بخليه اربع اضعاف حجمه الطبيعى
          
         const SizedBox(height: 40,),
          
          CustomButton(onTap: () {
            if(formKey.currentState!.validate()) //? when click go form and form will see textfield state if in validator is ok will make save
            {
              formKey.currentState!.save(); //? save data
            }
            else{
              autovalidateMode = AutovalidateMode.always; //? validate again and if write any thing it works
              //setState(() { /*! to change UI*/}); // dont need to use it
            }
          },),
    
         const SizedBox(height: 16,),
        ],
      ),
    );
  }
}

