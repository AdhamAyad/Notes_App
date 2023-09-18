import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 26,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 23,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 52, // todo: radius: 26, 26*2 = 52
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
        return const ColorItem();
      }),
    );
  }
}