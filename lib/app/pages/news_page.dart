import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/forms_of_creation/make_news.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/localization/app_localization.dart';

class NewsPage extends StatefulWidget {

  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (context) => NewsBloc(),
      child: BlocProvider<SavedNewsBloc>(
        create: (context) => SavedNewsBloc(),
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(AppLocalization.of(context)!.news, style: ThemeProvider.getTheme().textTheme.headline2),
                backgroundColor: ColorPalette.appBarColor,
              ),
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/image/image.jpg'),
                    fit: BoxFit.cover,
                  ),
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
                  content: (list) {
                    return _scrollView(context, list);
                  },
                  contentEmpty: () {
                    return Center(
                      child: Text(
                        AppLocalization.of(context)!.notNews,
                        style: ThemeProvider.getTheme().textTheme.headline2,
                      ),
                    );
                  },
                  error: () {
                    return Center(
                      child: Text(
                        AppLocalization.of(context)!.wrong,
                        style: ThemeProvider.getTheme().textTheme.headline2,
                      ),
                    );
                  },
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return MakeNewsForm();
                    },
                  );
                },
                child: const Icon(
                  Icons.add,
                ),
                backgroundColor: ColorPalette.appBarColor,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _scrollView(context, list) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (ctx, index) {
          if (list.isEmpty) {
            BlocProvider.of<NewsBloc>(context).add(NewsEmpty());
          }
          return _newsCard(context, list, index);
        },
      ),
    );
  }

  Widget _newsCard(context, list, index) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                child: Image.network(
                  list[index].url,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index].title,
                      style: const TextStyle(
                        color: ColorPalette.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 2.0,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(list[index].date),
                      style: const TextStyle(
                        color: ColorPalette.textColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 2.0,
                      ),
                    ),
                    Text(
                      list[index].text,
                      style: const TextStyle(
                        color: ColorPalette.textColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                BlocProvider.of<SavedNewsBloc>(context).add(
                  CreateSavedNewsEvent(
                    list[index].title,
                    list[index].text,
                    DateFormat.yMMMd().format(
                      list[index].date,
                    ),
                  ),
                );
                BlocProvider.of<SavedNewsBloc>(context).add(FetchSavedNewsEvent());
              },
              icon: const Icon(
                Icons.save,
                color: ColorPalette.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
