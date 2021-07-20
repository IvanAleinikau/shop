import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

abstract class RemDataRep {}

class RemDataRepImpl extends RemDataRep {

  Future<String> makeNews(
    String title,
    String text,
    String image
  ) async {
    if(title.isNotEmpty & text.isNotEmpty){
      await FirebaseFirestore.instance
          .collection("news")
          .add({'title': title, 'text': text, 'image': image, 'date': new DateFormat.yMMMd().format(new DateTime.now())});
      return "News made";
    }else {
      return "Please enter title and text";
    }
  }
}
