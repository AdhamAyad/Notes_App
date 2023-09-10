import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 24, bottom: 24, left: 16), // padding iside container around child
      decoration: BoxDecoration(
        color: const Color(0XFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            // todo: ListTile → take widgets and easier

            //contentPadding:EdgeInsets.zero, // remove space that the listtile take

            title: const Text(
              //? title → first widget as column
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(
                //? subtitle → sec widget as column
                'Build Your Career With Creative',
                style:
                    TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
              ),
            ),

            trailing: IconButton(
              //? traling → as row
              onPressed: () {},
              icon: Icon(
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
              style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}