import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shop/core/models/news_model.dart';

class NewsRepository {
  late List<News> list = [];

  Future<String> makeNews(News news) async {
    if (news.title.isNotEmpty & news.text.isNotEmpty) {
      await FirebaseFirestore.instance.collection('news').add(
        {
          'title': news.title,
          'text': news.text,
          'url': news.url,
          'date': DateFormat.yMMMd().format(news.date),
        },
      );
      return 'News made';
    } else {
      return 'Please enter title and text';
    }
  }

  Future<List<News>> fetchNews() async {
    await FirebaseFirestore.instance.collection('news').get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            News news = News(
              title: doc['title'],
              text: doc['text'],
              url: doc['url'],
              date: DateFormat.yMMMd().parse(doc['date']),
            );
            list.add(news);
          },
        );
      },
    );
    return list;
  }
}
