import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/shop_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class ObjVinylRecord extends StatefulWidget {
  final VinylRecord vinylRecord;

  const ObjVinylRecord(this.vinylRecord);

  @override
  _ObjVinylRecordState createState() => _ObjVinylRecordState();
}

class _ObjVinylRecordState extends State<ObjVinylRecord> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShoppingCartBloc>(
      create: (context) => ShoppingCartBloc(),
      child: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorPalette.appBarColor,
              title: Text(widget.vinylRecord.name),
            ),
            body: Container(
              color: ColorPalette.backgroundColor,
              child: Hero(
                tag: widget.vinylRecord.name,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                          widget.vinylRecord.image,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<ShoppingCartBloc>(context).add(
                              CreateShoppingCart(
                                widget.vinylRecord.name,
                                widget.vinylRecord.author,
                                widget.vinylRecord.year,
                                widget.vinylRecord.description,
                                widget.vinylRecord.cost,
                                widget.vinylRecord.image,
                              ),
                            );
                          },
                          child: Text(AppLocalization.of(context)!.buy),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(const Size(150, 40)),
                            backgroundColor: MaterialStateProperty.all(ColorPalette.appBarColor),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                fontSize: 25.0,
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text(
                          widget.vinylRecord.name + ' - ' + widget.vinylRecord.year,
                          style: const TextStyle(
                            color: ColorPalette.titleColor,
                            fontSize: FontSize.titleFont,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          widget.vinylRecord.author,
                          style: const TextStyle(
                            color: ColorPalette.subtitleColor,
                            fontSize: FontSize.subtitleFont,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 7, 0, 0),
                        child: Text(
                          AppLocalization.of(context)!.description,
                          style: const TextStyle(
                            color: ColorPalette.titleColor,
                            fontSize: FontSize.titleFont,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                        child: Text(
                          widget.vinylRecord.description,
                          style: const TextStyle(
                            color: ColorPalette.titleColor,
                            fontSize: FontSize.titleFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
