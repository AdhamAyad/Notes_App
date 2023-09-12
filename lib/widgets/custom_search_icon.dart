import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 45,
        width: 45,

        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05), // todo: withOpacity → لتغيير شفافيه اللون
            borderRadius: BorderRadius.circular(16)), // حواف دائريه
            
        child: IconButton(
          onPressed:(){},
          icon: Icon(icon,size: 28,),         
        ));
  }
}