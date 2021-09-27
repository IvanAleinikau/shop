import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class SavedNewsPage extends StatefulWidget {

  const SavedNewsPage({Key? key}) : super(key: key);

  @override
  _SavedNewsPageState createState() => _SavedNewsPageState();
}

class _SavedNewsPageState extends State<SavedNewsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SavedNewsBloc>(
      create: (context) => SavedNewsBloc(),
      child: BlocBuilder<SavedNewsBloc, SavedNewsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorPalette.backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalization.of(context)!.savedNews,
                style: ThemeProvider.getTheme().textTheme.headline2,
              ),
              backgroundColor: ColorPalette.appBarColor,
            ),
            body: Container(
              child: state.when(
                initState: () {
                  BlocProvider.of<SavedNewsBloc>(context).add(FetchSavedNewsEvent());
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                content: (list) {
                  return _scrollView(context, list, context);
                },
                contentEmpty: () {
                  return Center(
                    child: Text(
                      AppLocalization.of(context)!.notNews,
                      style: ThemeProvider.getTheme().textTheme.headline3,
                    ),
                  );
                },
                error: () {
                  return Center(
                    child: Text(
                      AppLocalization.of(context)!.wrong,
                      style: ThemeProvider.getTheme().textTheme.headline3,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _scrollView(_, list, context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<SavedNewsBloc>(_).add(FetchSavedNewsEvent());
      },
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            background: Container(
              color: ColorPalette.dismissibleColor,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: const Icon(
                Icons.delete_forever,
              ),
            ),
            key: ValueKey<int>(list[index].id!.toInt()),
            onDismissed: (direction) {
              BlocProvider.of<SavedNewsBloc>(context).add(DeleteSavedNewsEvent(list[index].id!.toInt()));
              BlocProvider.of<SavedNewsBloc>(context).add(FetchSavedNewsEvent());
            },
            child: Card(
              color: ColorPalette.cardColor,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(
                      list[index].title,
                      style: const TextStyle(
                        fontSize: FontSize.newsTitleFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      list[index].text,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Text(
                      list[index].date,
                      style: const TextStyle(
                        color: ColorPalette.dateNewsColor,
                        fontSize: FontSize.newsTextFont,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
