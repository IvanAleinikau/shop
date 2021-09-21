import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/news_model.dart';

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
              backgroundColor: ColorPalette.backgroundColor,
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  AppLocalization.of(context)!.news,
                  style: ThemeProvider.getTheme().textTheme.headline2,
                ),
                backgroundColor: ColorPalette.appBarColor,
              ),
              body: Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: state.when(
                  initState: () {
                    BlocProvider.of<NewsBloc>(context).add(FetchNewsEvent());
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
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
            );
          },
        ),
      ),
    );
  }

  Widget _scrollView(context, list) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewsBloc>(context).add(FetchNewsEvent());
      },
      child: Scrollbar(
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
      ),
    );
  }

  Widget _newsCard(context, List<News> list, index) {
    return Card(
      color: ColorPalette.cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    list[index].title,
                    style: const TextStyle(
                      fontSize: FontSize.newsTitleFont,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Karla',
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(5, 10, 10, 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      list[index].url,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Text(
              list[index].text,
              style: const TextStyle(
                color: ColorPalette.textNewsColor,
                fontSize: FontSize.newsTextFont,
              ),
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    DateFormat.yMMMd().format(list[index].date),
                    style: const TextStyle(
                      color: ColorPalette.dateNewsColor,
                      fontSize: FontSize.newsTextFont,
                    ),
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text(AppLocalization.of(context)!.saved),
                        backgroundColor: ColorPalette.savedNewsBarColor,
                        duration: const Duration(milliseconds: 500),
                      ),
                    );
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
                    Icons.save_outlined,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
