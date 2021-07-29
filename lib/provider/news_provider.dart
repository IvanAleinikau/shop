import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shop/model/element_news.dart';

class NewsRepository  {

  Future<String> makeNews(News news) async {
    if(news.title.isNotEmpty & news.text.isNotEmpty){
      await FirebaseFirestore.instance
          .collection("news")
          .add({'title': news.title, 'text': news.text, 'date': new DateFormat.yMMMd().format(news.date)});
      return "News made";
    }else {
      return "Please enter title and text";
    }
  }

}
