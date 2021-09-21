import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_outlined,
                          size: FontSize.iconFont,
                          color: ColorPalette.iconColor,
                        ),
                        Text(
                          AppLocalization.of(context)!.emptyCart,
                          style: ThemeProvider.getTheme().textTheme.headline3,
                        ),
                      ],
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
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        list[index].vinylRecord.cost + ' \$',
                                        style: const TextStyle(
                                          color: ColorPalette.costColor,
                                          fontSize: FontSize.costFont,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext ctx) {
                                            return _deleteDialog(context, index, _bloc);
                                          },
                                        );
                                        _bloc.add(FetchShoppingCartEvent());
                                      },
                                      icon: const Icon(
                                        CupertinoIcons.clear,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
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
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return _purchaseConfirm(context, list);
                    },
                  );
                },
                child: Text(AppLocalization.of(context)!.pay + ' - ${total.toString()} \$'),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                  backgroundColor: MaterialStateProperty.all(ColorPalette.buttonColor),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: FontSize.buttonFont,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _deleteDialog(context, index, _bloc) {
    return Dialog(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                AppLocalization.of(context)!.doWant,
                style: const TextStyle(
                  fontSize: FontSize.postOfficeIndexFont,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(AppLocalization.of(context)!.no),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(70, 20)),
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
                      fixedSize: MaterialStateProperty.all(const Size(70, 20)),
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
            )
          ],
        ),
      ),
    );
  }

  Widget _purchaseConfirm(context, List<Purchase> list) {
    return Dialog(
      backgroundColor: ColorPalette.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            final UserBloc _bloc = BlocProvider.of<UserBloc>(context);
            return Container(
              height: 450,
              color: ColorPalette.backgroundColor,
              child: state.when(
                initState: () {
                  _bloc.add(FetchUser());
                },
                user: (user) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          AppLocalization.of(context)!.order,
                          style: const TextStyle(
                            fontSize: FontSize.orderFont,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          child: ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                                child: Text(
                                  '${index + 1}. ${list[index].vinylRecord.name} x ${list[index].count} - ${list[index].count * int.parse(list[index].vinylRecord.cost)} \$',
                                  style: const TextStyle(
                                    fontSize: FontSize.nameFont,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomDivider(),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                AppLocalization.of(context)!.customer + ' ' + user.firstName + ' ' + user.surname,
                                style: const TextStyle(
                                  fontSize: FontSize.customerFont,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              alignment: Alignment.center,
                              child: Text(
                                AppLocalization.of(context)!.order2 + ' ' + user.postOfficeIndex.toString() + '.',
                                style: const TextStyle(
                                  fontSize: FontSize.infoFont,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                AppLocalization.of(context)!.thanks,
                                style: const TextStyle(
                                  fontSize: FontSize.thanksFont,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(AppLocalization.of(context)!.ok),
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
