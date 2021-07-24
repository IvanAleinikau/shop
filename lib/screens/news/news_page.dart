import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/widgets/news/news_menu.dart';

class ListNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('news').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (ctx, index) {
              return Container(
                height: 170,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('asset/image/news.jpg'),
                  ),
                  title: Text(
                    streamSnapshot.data!.docs[index]['title']+' - ' +streamSnapshot.data!.docs[index]['date'],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  subtitle: Text(
                      streamSnapshot.data!.docs[index]['text'],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onLongPress: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return NewsMenu();
                        });
                  },
                ),
              );
            });
      },
    ));
  }
}
