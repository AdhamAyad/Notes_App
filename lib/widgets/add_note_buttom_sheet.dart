import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  //! دا المكان الى الواجهه بتتغير فيه عشان كدا حطيت عليه البلوك
  const AddNoteButtomSheet(
      {super.key}); //? this is the place that state changes into

  @override
  Widget build(BuildContext context) {
    
    //! بدى الصلاحيه للمكان دا و اودجيت التابعه ليه انهم يستخدمو البلوك دا
    return BlocProvider( //! provide this code with bloc to enable it to use it
      create: (context) => AddNoteCubit(), //? enable to use this addnote cubit

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        //! BlocConsumer → كأنى بفعل البلوك و بقله الاستيتس بتاعتك لما تتغير تعمل كذا
        child: BlocConsumer<AddNoteCubit, AddNoteState>( //? write what to do when state change
          //! BlocConsumer → that rebuild UI
          listener: (context, state) {
            //? listener → write what to do when state changes
            if (state is AddNoteFailure) //? if error
            {
              print('Faild: ${state.errMessage}');
            }
            if (state is AddNoteSuccess) //? if state is success
            {
              Navigator.pop(context); //? if got good return back
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false, //! best
                child: const SingleChildScrollView(
                    child:
                        AddNoteForm()) //? the place that will changes his UI and itis the intial state
                );
          },
        ),
      ),
    );
  }
}
