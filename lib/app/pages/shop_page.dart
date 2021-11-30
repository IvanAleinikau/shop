import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/content/content_message.dart';
import 'package:shop/app/widgets/search_items/failure.dart';
import 'package:shop/app/pages/vinyl_record_page.dart';
import 'package:shop/app/widgets/shop_page/vinyl_card.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:search_page/search_page.dart';
import 'package:shop/core/navigator_service.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

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
            final VinylRecordBloc _bloc =
                BlocProvider.of<VinylRecordBloc>(context);
            BlocProvider.of<VinylRecordBloc>(context).add(FetchVinylRecord());
            BlocProvider.of<ShoppingCartBloc>(context)
                .add(FetchShoppingCartEvent());
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorPalette.appBarColor,
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
                      showSearch(
                          context: context,
                          delegate:
                              _search(context, _bloc.allVinylRecord, _bloc));
                    },
                  ),
                  BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                    builder: (context, purchaseState) {
                      final ShoppingCartBloc _bloc =
                          BlocProvider.of<ShoppingCartBloc>(context);
                      _bloc.add(FetchShoppingCartEvent());
                      return Badge(
                        position: BadgePosition.topStart(top: 3, start: 2),
                        badgeContent: purchaseState.when(
                          initState: () {
                            _bloc.add(FetchShoppingCartEvent());
                          },
                          loading: () {},
                          content: (list, total) {
                            return Text(list.length.toString());
                          },
                          contentEmpty: () {
                            return const Text('0');
                          },
                          error: () {},
                        ),
                        badgeColor: ColorPalette.badgeColor,
                        toAnimate: true,
                        animationType: BadgeAnimationType.fade,
                        child: IconButton(
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                          onPressed: () {
                            GetIt.instance<NavigatorService>()
                                .navigateTo(Pages.shoppingCart);
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              body: Container(
                color: ColorPalette.backgroundColor,
                child: state.when(
                  initState: () {
                    BlocProvider.of<VinylRecordBloc>(context)
                        .add(FetchVinylRecord());
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
                    return _scrollView(context, list, _bloc);
                  },
                  contentEmpty: () {
                    return ContentMessage(
                      text: AppLocalization.of(context)!.notVinyl,
                      textStyle: ThemeProvider.getTheme().textTheme.headline3,
                    );
                  },
                  error: () {
                    return ContentMessage(
                      text: AppLocalization.of(context)!.wrong,
                      textStyle: ThemeProvider.getTheme().textTheme.headline3,
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
                onLongPress: () {},
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ObjVinylRecord(list[index]),
                    ),
                  );
                },
                child: VinylCard(
                  vinylRecord: list[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  SearchPage<VinylRecord> _search(context, list, _bloc) {
    return SearchPage<VinylRecord>(
      barTheme: ThemeData(
        primaryColor: ColorPalette.appBarColor,
        dividerColor: ColorPalette.backgroundColor,
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
                    color: ColorPalette.cardColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 170,
                            child: Image.network(
                              vinylRecord.image,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  vinylRecord.cost + ' \$',
                                  style: const TextStyle(
                                    color: ColorPalette.costColor,
                                    fontSize: FontSize.costFont,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                child: Text(
                                  vinylRecord.name,
                                  style: const TextStyle(
                                    color: ColorPalette.titleColor,
                                    fontSize: FontSize.titleFont,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  vinylRecord.author,
                                  style: const TextStyle(
                                    color: ColorPalette.subtitleColor,
                                    fontSize: FontSize.subtitleFont,
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
            ),
          ),
        );
      },
    );
  }
}
