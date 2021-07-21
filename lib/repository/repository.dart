import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class RemDataRepImpl  {

  Future<String> makeNews(
    String title,
    String text,
  ) async {
    if(title.isNotEmpty & text.isNotEmpty){
      await FirebaseFirestore.instance
          .collection("news")
          .add({'title': title, 'text': text, 'date': new DateFormat.yMMMd().format(new DateTime.now())});
      return "News made";
    }else {
      return "Please enter title and text";
    }
  }


}
