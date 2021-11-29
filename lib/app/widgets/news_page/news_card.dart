import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/news_model.dart';

class NewsCard extends StatelessWidget {
  final News news;
  
  const NewsCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    news.title,
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
                      news.url,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Text(
              news.text,
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
                    DateFormat.yMMMd().format(news.date),
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
                        news.title,
                        news.text,
                        DateFormat.yMMMd().format(
                          news.date,
                        ),
                      ),
                    );
                    BlocProvider.of<SavedNewsBloc>(context)
                        .add(FetchSavedNewsEvent());
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
