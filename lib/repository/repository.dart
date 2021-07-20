import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

abstract class RemDataRep {}

class RemDataRepImpl extends RemDataRep {
  Future<void> makeNews(
    String title,
    String text,
    String image
  ) async {
    await FirebaseFirestore.instance
        .collection("news")
        .add({'title': title, 'text': text, 'image': image, 'date': new DateFormat.yMMMd().format(new DateTime.now())});
  }
}
