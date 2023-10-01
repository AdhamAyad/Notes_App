import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_sapp/cubits/add_note_cubit/add_note_cubit.dart';

import 'constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected; //? tell me if it is selected
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected ?  CircleAvatar( //? if true do this
      radius: 26,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 23,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
        radius: 23,
        backgroundColor: color,
      );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 5 ; //? intial variable
  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 52, // todo: radius: 26, 26*2 = 52
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child:  GestureDetector(
            onTap: () {
              currentIndex = index; //! when click give currentIndex same value of index
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index]; //! take color that user choose
              setState(() {});
              
            },//! when currentIndex same value of index return true and change UI
            child: ColorItem(isSelected: currentIndex == index, color: kColors[index],)),
        );
      }),
    );
  }
}