import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05), // todo: withOpacity → لتغيير شفافيه اللون
            borderRadius: BorderRadius.circular(16)), // حواف دائريه
        child: Center(
            child: Icon(
          Icons.search_outlined,
          size: 28,
        )));
  }
}