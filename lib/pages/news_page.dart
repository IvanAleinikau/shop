import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/widgets/forms_of_creation/make_news.dart';
import 'package:shop/widgets/app_menu.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        BlocProvider.of<NewsBloc>(context).add(FetchNewsEvent());
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              AppLocalization.of(context)!.news,
              style: const TextStyle(fontFamily: 'Oxygen'),
            ),
            backgroundColor: Colors.black54,
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: state.when(
                initState: () {
                  BlocProvider.of<NewsBloc>(context).add(FetchNewsEvent());
                },
                loading: () {
                  return const Center(
                      child: CircularProgressIndicator(),
                  );
                },
                content: (name) {
                  return StreamBuilder(
                    stream: name,
                    builder: (context,
                        AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                      if (streamSnapshot.hasData) {
                        return Scrollbar(
                            controller: _scrollController,
                            child: ListView.builder(
                                itemCount: streamSnapshot.data!.docs.length,
                                itemBuilder: (ctx, index) {
                                  if(streamSnapshot.data!.docs.isEmpty){
                                    BlocProvider.of<NewsBloc>(context).add(NewsEmpty());
                                  }
                                  return Card(
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                height: 100,
                                                child: Image.network(
                                                    streamSnapshot.data!
                                                        .docs[index]['url']),
                                              )),
                                          Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    5.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    Text(
                                                      streamSnapshot.data!
                                                          .docs[index]
                                                      ['title'],
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 25.0,
                                                      ),
                                                    ),
                                                    const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                            vertical:
                                                            2.0)),
                                                    Text(
                                                      streamSnapshot.data!
                                                          .docs[index]
                                                      ['date'],
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.w300,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                    const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                            vertical:
                                                            2.0)),
                                                    Text(
                                                      streamSnapshot.data!
                                                          .docs[index]
                                                      ['text'],
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.w300,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                BlocProvider.of<
                                                    SavedNewsBloc>(
                                                    context)
                                                    .add(CreateSavedNewsEvent(
                                                  streamSnapshot.data!
                                                      .docs[index]['title'],
                                                  streamSnapshot.data!
                                                      .docs[index]['text'],
                                                  streamSnapshot.data!
                                                      .docs[index]['date'],
                                                ));
                                                BlocProvider.of<SavedNewsBloc>(context).add(FetchSavedNewsEvent());
                                              },
                                              icon: const Icon(
                                                Icons.save,
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ),
                                  );
                                }));
                      } else {
                        return const Center(
                            child: CircularProgressIndicator());
                      }
                    },
                  );
                },
                contentEmpty: () {
                  return Center(
                    child: Text(
                      AppLocalization.of(context)!.notNews,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
                error: () {
                  return const Center(
                      child: Text(
                        'Something wrong',
                        style: TextStyle(color: Colors.white),
                      ));
                }),
          ),
          drawer: const Menu(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MakeNewsForm();
                  });
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.black54,
          ),
        );
      },
    );
  }
}
