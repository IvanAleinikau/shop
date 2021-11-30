import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class VinylCard extends StatelessWidget {
  final VinylRecord vinylRecord;

  const VinylCard({
    Key? key,
    required this.vinylRecord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          color: ColorPalette.cardColor,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(vinylRecord.image),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          vinylRecord.cost + ' \$',
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content:
                                  Text(AppLocalization.of(context)!.bought),
                              backgroundColor: ColorPalette.savedNewsBarColor,
                              duration: const Duration(milliseconds: 700),
                            ),
                          );
                          BlocProvider.of<ShoppingCartBloc>(context).add(
                            CreateShoppingCart(
                              vinylRecord.name,
                              vinylRecord.author,
                              vinylRecord.year,
                              vinylRecord.description,
                              vinylRecord.cost,
                              vinylRecord.image,
                            ),
                          );
                          BlocProvider.of<ShoppingCartBloc>(context)
                              .add(FetchShoppingCartEvent());
                        },
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
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
                    vinylRecord.name,
                    style: const TextStyle(
                      color: ColorPalette.titleColor,
                      fontSize: FontSize.titleFont,
                    ),
                    maxLines: 1,
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
        ),
      ),
    );
  }
}
