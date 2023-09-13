import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
    
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
    
        width: MediaQuery.of(context).size.width, //? MediaQuery.of(context).size.width → take all widget can to take in width
        height: 55,
    
        child: const Center(
          child: Text('Add', style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          //fontWeight: FontWeight.bold
          ),)
          ),
      ),
    );
  }
}