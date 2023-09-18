import 'package:hive/hive.dart';

part 'note_model.g.dart'; //! important to be the same file name 'note_model' and save
//! after this run 'flutter packages pub run build_runner build' in terminal to enable you to save object with this type

@HiveType(typeId: 0) //! type id for class cant repeat it for another class
class NoteModel extends HiveObject{ //? can reapet it into class

//! make id for every feild 'variables'
  @HiveField(0)
   String title;

  @HiveField(1)
   String subTitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
   int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});


      
}
