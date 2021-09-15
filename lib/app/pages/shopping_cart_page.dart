import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/purchase_model.dart';

import 'maps_page.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShoppingCartBloc>(
      create: (context) => ShoppingCartBloc(),
      child: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          BlocProvider.of<ShoppingCartBloc>(context).add(FetchShoppingCartEvent());
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: ColorPalette.appBarColor,
              title: Text(
                AppLocalization.of(context)!.cart,
                style: ThemeProvider.getTheme().textTheme.headline2,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Maps(),
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
                  BlocProvider.of<ShoppingCartBloc>(context).add(FetchShoppingCartEvent());
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                content: (list, total) {
                  return _scrollView(context, list, total);
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
          );
        },
      ),
    );
  }

  Widget _scrollView(context, List<Purchase> list, total) {
    final ShoppingCartBloc _bloc = BlocProvider.of<ShoppingCartBloc>(context);
    return Column(
      children: <Widget>[
        Expanded(
          flex: 6,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Card(
                    color: ColorPalette.cardColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.network(list[index].vinylRecord.image),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  list[index].vinylRecord.cost + ' \$',
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
                                  list[index].vinylRecord.name,
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
                                  list[index].vinylRecord.author,
                                  style: const TextStyle(
                                    color: ColorPalette.subtitleColor,
                                    fontSize: FontSize.subtitleFont,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        if (list[index].count == 1) {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext ctx) {
                                              return _deleteDialog(context, index, _bloc);
                                            },
                                          );
                                        } else {
                                          _bloc.add(
                                            CountDecrement(
                                              list[index].count,
                                              index,
                                            ),
                                          );
                                          _bloc.add(FetchShoppingCartEvent());
                                        }
                                      },
                                      icon: const Icon(Icons.remove),
                                    ),
                                    Text(
                                      '${list[index].count}',
                                      style: const TextStyle(
                                        fontSize: FontSize.costFont,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _bloc.add(
                                          CountIncrement(
                                            list[index].count,
                                            index,
                                          ),
                                        );
                                        _bloc.add(FetchShoppingCartEvent());
                                      },
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    AppLocalization.of(context)!.total + '${total.toString()} \$',
                    style: const TextStyle(
                      color: ColorPalette.costColor,
                      fontSize: FontSize.totalFont,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 5),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return _purchaseConfirm(context, list, _bloc);
                          },
                        );
                      },
                      child: Text(AppLocalization.of(context)!.pay),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(const Size(150, 50)),
                        backgroundColor: MaterialStateProperty.all(ColorPalette.appBarColor),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: FontSize.buttonFont,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _deleteDialog(context, index, _bloc) {
    return AlertDialog(
      title: Text(AppLocalization.of(context)!.doWant),
      content: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalization.of(context)!.no),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100, 50)),
                  backgroundColor: MaterialStateProperty.all(ColorPalette.cancelButtonColor),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: FontSize.buttonFont,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 15, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _bloc.add(Delete(index));
                  _bloc.add(FetchShoppingCartEvent());
                },
                child: Text(AppLocalization.of(context)!.yes),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100, 50)),
                  backgroundColor: MaterialStateProperty.all(ColorPalette.confirmButtonColor),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: FontSize.buttonFont,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _purchaseConfirm(context, list, _bloc) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            //TODO
          ],
        ),
      ),
    );
  }
}
