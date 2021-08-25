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
        child: BlocBuilder<SavedNewsBloc, SavedNewsState>(
          builder: (context, state) {
            final SavedNewsBloc _bloc = BlocProvider.of<SavedNewsBloc>(context);
            _bloc.add(LoadSavedNews());
            if (state is SavedNewsLoaded) {
              return ListView.builder(
                itemCount: _bloc.allSavedNews.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Icon(Icons.delete_forever),
                    ),
                    key: ValueKey<int>(_bloc.allSavedNews[index].id!.toInt()),
                    onDismissed: (direction) {
                      _bloc.add(CircleEvent());
                      _bloc.add(
                          DeleteSavedNews(index: _bloc.allSavedNews[index].id));
                    },
                    child: Column(
                      children: [
                        Card(
                          color: Colors.transparent,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              _bloc.allSavedNews[index].title +
                                  ' - ' +
                                  _bloc.allSavedNews[index].date,
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              _bloc.allSavedNews[index].text,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (state is EmptySavedNews) {
              return Center(
                child: Text(
                  AppLocalization.of(context)!.notNews,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }else if(state is CircleState){
              return const Center(
                child: CircularProgressIndicator(value: 200,),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
      drawer: const Menu(),
    );
  }
}
