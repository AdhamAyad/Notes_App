import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected; //? tell me if it is selected
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected ?  CircleAvatar( //? if true do this
      radius: 25,
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
  int currentIndex = 0 ; //? intial variable
  List<Color> colors = const [
    Color(0XFF2A2D34),
    Color(0XFF009DDC),
    Color(0XFFF26430),
    Color(0XFF6761A8),
    Color(0XFF009B72),
    Color(0XFFFFAEBC),
    Color(0XFFA0E7E5),
    Color(0XFFB4F8C8),
    Color(0XFFFBE7C6),
    // Colors.red,
    // Colors.blue,
    // Colors.orange,
    // Colors.black,
    // Colors.white,

  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 52, // todo: radius: 26, 26*2 = 52
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child:  GestureDetector(
            onTap: () {
              currentIndex = index; //! when click give currentIndex same value of index
              setState(() {
                
              });
            },//! when currentIndex same value of index return true and change UI
            child: ColorItem(isSelected: currentIndex == index, color: colors[index],)),
        );
      }),
    );
  }
}