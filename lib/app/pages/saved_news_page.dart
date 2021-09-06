import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class SavedNewsPage extends StatefulWidget {
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
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalization.of(context)!.savedNews,
                style: ThemeProvider.getTheme().textTheme.headline2,
              ),
              backgroundColor: ColorPalette.primaryColor,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
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
            drawer: const Menu(),
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
            child: Column(
              children: [
                Card(
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(
                      list[index].title + ' - ' + list[index].date,
                      style: ThemeProvider.getTheme().textTheme.headline3,
                    ),
                    subtitle: Text(
                      list[index].text,
                      style: ThemeProvider.getTheme().textTheme.headline3,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
