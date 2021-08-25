import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shop/core/models/news_model.dart';

class NewsRepository {
  Future<String> makeNews(News news) async {
    if (news.title.isNotEmpty & news.text.isNotEmpty) {
      await FirebaseFirestore.instance.collection('news').add({
        'title': news.title,
        'text': news.text,
        'url': news.url,
        'date': DateFormat.yMMMd().format(news.date)
      });
      return 'News made';
    } else {
      return 'Please enter title and text';
    }
  }
}
