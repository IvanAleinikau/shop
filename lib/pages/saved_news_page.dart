import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/widgets/app_menu.dart';

class SavedNewsPage extends StatefulWidget {
  @override
  _SavedNewsPageState createState() => _SavedNewsPageState();
}

class _SavedNewsPageState extends State<SavedNewsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedNewsBloc, SavedNewsState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalization.of(context)!.savedNews,
            style: const TextStyle(fontFamily: 'Oxygen'),
          ),
          backgroundColor: Colors.black54,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/image.jpg'), fit: BoxFit.cover),
          ),
          child: state.when(initState: () {
            BlocProvider.of<SavedNewsBloc>(context).add(FetchSavedNewsEvent());
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }, content: (list) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<SavedNewsBloc>(context)
                    .add(FetchSavedNewsEvent());
              },
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Icon(Icons.delete_forever),
                    ),
                    key: ValueKey<int>(list[index].id!.toInt()),
                    onDismissed: (direction) {
                      BlocProvider.of<SavedNewsBloc>(context)
                          .add(DeleteSavedNewsEvent(list[index].id!.toInt()));
                      BlocProvider.of<SavedNewsBloc>(context)
                          .add(FetchSavedNewsEvent());
                    },
                    child: Column(
                      children: [
                        Card(
                          color: Colors.transparent,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              list[index].title + ' - ' + list[index].date,
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              list[index].text,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }, contentEmpty: () {
            return Center(
              child: Text(
                AppLocalization.of(context)!.notNews,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }, error: () {
            return const Center(
                child: Text(
              'Something wrong',
              style: TextStyle(color: Colors.white),
            ));
          }),
        ),
        drawer: const Menu(),
      );
    });
  }
}
