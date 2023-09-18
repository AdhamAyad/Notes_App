import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        //! make page scrollable , make her child take small space
        child: BlocConsumer<AddNoteCubit, AddNoteState>( //! BlocConsumer → that rebuild UI
          listener: (context, state) { //? listener → write what to do when state changes
            if(state is AddNoteFailure) //? if error
            {
              print('Faild: ${state.errMessage}');
            }
            if(state is AddNoteSuccess) //? if state is success
            {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return  ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true :false, //! best
              child:const AddNoteForm() //? the place that will changes his UI and itis the intial state
              );
          },
        ),
      ),
    );
  }
}
