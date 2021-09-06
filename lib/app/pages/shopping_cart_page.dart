import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/localization/app_localization.dart';

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
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: ColorPalette.primaryColor,
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: state.when(
                initState: () {
                  BlocProvider.of<ShoppingCartBloc>(context).add(FetchShoppingCartEvent());
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

  Widget _scrollView(context, list) {
    return GridView.count(
      childAspectRatio: 0.7,
      crossAxisCount: 2,
      children: List.generate(
        list.length,
        (index) {
          return Container(
            padding: const EdgeInsets.all(3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Card(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.network(list[index].vinylRecord.image),
                    ),
                    ListTile(
                      title: Text(
                        list[index].vinylRecord.name,
                        style: ThemeProvider.getTheme().textTheme.headline1,
                      ),
                      subtitle: Text(
                        list[index].vinylRecord.author,
                        style: ThemeProvider.getTheme().textTheme.headline3,
                      ),
                      trailing: Text(
                        list[index].vinylRecord.cost + '\$',
                        style: ThemeProvider.getTheme().textTheme.headline3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
