import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/content/content_message.dart';
import 'package:shop/app/widgets/news_page/news_card.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
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
                    return ContentMessage(
                      text: AppLocalization.of(context)!.notNews,
                      textStyle: ThemeProvider.getTheme().textTheme.headline3,
                    );
                  },
                  error: () {
                    return ContentMessage(
                      text: AppLocalization.of(context)!.wrong,
                      textStyle: ThemeProvider.getTheme().textTheme.headline2,
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
            return NewsCard(
              news: list[index],
            );
          },
        ),
      ),
    );
  }
}
