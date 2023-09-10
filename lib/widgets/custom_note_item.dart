import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(
          top: 24, bottom: 24, left: 16), // padding iside container around child

      decoration: BoxDecoration(
        color: const Color(0XFFFFCC80), // color of continer
        borderRadius: BorderRadius.circular(16), // حواف دائريه للكونتينار
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // عشان التاريخ و اليوم يتحطو فى الاخر

        children: [
          ListTile(// todo: ListTile → take widgets and easier
            
            //?contentPadding:EdgeInsets.zero, // remove space that the listtile take

            title: const Text(//* title → first widget as column              
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(//* subtitle → sec widget as column
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(               
                'Build Your Career With Creative',
                style:
                    TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
              ),
            ),

            trailing: IconButton(//* traling → as row       
              onPressed: () {},
              icon:const Icon(
                FontAwesomeIcons.trash,
                size: 24,
              ),
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2022',
              style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16), //!withOpacity → الشفافيه للون 
            ),
          )
        ],
      ),
    );
  }
}