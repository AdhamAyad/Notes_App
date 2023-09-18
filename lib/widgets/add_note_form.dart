import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_sapp/models/note_model.dart';
import 'custom_buttom.dart';
import 'custom_text_field.dart';

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
              //! هنا بستخدم الفكشن الى جوا البلوك و دا اول استخدام للبلوك دا فعليا
              //! this is the place that changes state from after this UI changes
              formKey.currentState!.save(); //? save data
              //? make model to give it to function to add it by hive in local data base
              var noteModel = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value); //? value → return value as int 
              //! make object of cubit to use function that inside and thats cahnges state
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel); //? that will save in data base
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