import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/shopping_cart_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/app/widgets/forms_of_creation/make_vinyl_record.dart';
import 'package:shop/app/widgets/search_items/failure.dart';
import 'package:shop/app/pages/vinyl_record_page.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:search_page/search_page.dart';

import 'video_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VinylRecordBloc>(
      create: (context) => VinylRecordBloc(),
      child: BlocProvider<ShoppingCartBloc>(
        create: (context) => ShoppingCartBloc(),
        child: BlocBuilder<VinylRecordBloc, VinylRecordState>(
          builder: (context, state) {
            final VinylRecordBloc _bloc = BlocProvider.of<VinylRecordBloc>(context);
            BlocProvider.of<VinylRecordBloc>(context).add(FetchVinylRecord());
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorPalette.primaryColor,
                title: Text(
                  AppLocalization.of(context)!.shop,
                  style: ThemeProvider.getTheme().textTheme.headline2,
                ),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                    ),
                    onPressed: () {
                      showSearch(context: context, delegate: _search(context, _bloc.allVinylRecord, _bloc));
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ShoppingCartPage()),
                      );
                    },
                  ),
                ],
              ),
              body: Container(
                color: ColorPalette.backgroundColor,
                child: state.when(
                  initState: () {
                    BlocProvider.of<VinylRecordBloc>(context).add(FetchVinylRecord());
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  content: (list) {
                    return _scrollView(context, list, _bloc);
                  },
                  contentEmpty: () {
                    return Center(
                      child: Text(
                        AppLocalization.of(context)!.notVinyl,
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
              drawer: const Menu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return MakeVinylRecord();
                    },
                  );
                },
                child: const Icon(Icons.add),
                backgroundColor: ColorPalette.primaryColor,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _scrollView(context, list, _bloc) {
    return Scrollbar(
      controller: _scrollController,
      child: GridView.count(
        childAspectRatio: 0.66,
        crossAxisCount: 2,
        children: List.generate(
          list.length,
          (index) {
            return Hero(
              tag: '${list[index].name}',
              child: GestureDetector(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VideoPlayerScreen(),
                    ),
                  );
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ObjVinylRecord(list[index]),
                    ),
                  );
                },
                child: _vinylCard(context, list, index),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _vinylCard(context, list, index) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Card(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(list[index].image),
                ),
                ListTile(
                  title: Text(
                    list[index].name,
                    style: ThemeProvider.getTheme().textTheme.headline1,
                  ),
                  subtitle: Text(
                    list[index].author,
                    style: ThemeProvider.getTheme().textTheme.headline2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Text(
                              list[index].cost + '\$',
                              style: ThemeProvider.getTheme().textTheme.headline3,
                            ),
                          )),
                      Container(
                        height: 20,
                        padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<ShoppingCartBloc>(context).add(
                                CreateShoppingCart(
                                  list[index].name,
                                  list[index].author,
                                  list[index].year,
                                  list[index].description,
                                  list[index].cost,
                                  list[index].image,
                                ),
                              );
                            },
                            child: Text(
                              AppLocalization.of(context)!.buy,
                              style: ThemeProvider.getTheme().textTheme.headline2,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(ColorPalette.primaryColor),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SearchPage<VinylRecord> _search(context, list, _bloc) {
    return SearchPage<VinylRecord>(
      barTheme: ThemeData(
        primaryColor: ColorPalette.searchBarColor,
        dividerColor: ColorPalette.backgroundColor,
        accentColor: ColorPalette.backgroundColor,
        scaffoldBackgroundColor: ColorPalette.backgroundColor,
      ),
      items: list,
      searchLabel: AppLocalization.of(context)!.search,
      suggestion: Container(
        color: ColorPalette.backgroundColor,
        child: _scrollView(context, list, _bloc),
      ),
      failure: Failure(),
      filter: (vinylRecord) => [
        vinylRecord.name,
        vinylRecord.author,
        vinylRecord.cost,
      ],
      builder: (vinylRecord) {
        return Container(
          color: ColorPalette.backgroundColor,
          child: Hero(
            tag: vinylRecord.name,
            child: GestureDetector(
              onLongPress: () {},
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ObjVinylRecord(vinylRecord),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Card(
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 150,
                            child: Image.network(
                              vinylRecord.image,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text(
                              vinylRecord.name,
                              style: ThemeProvider.getTheme().textTheme.headline1,
                            ),
                            subtitle: Text(
                              vinylRecord.author,
                              style: ThemeProvider.getTheme().textTheme.headline2,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              vinylRecord.cost + '\$',
                              style: ThemeProvider.getTheme().textTheme.headline1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
