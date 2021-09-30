import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/text_style.dart';
import 'package:shop/app/widgets/horizontal_line.dart';
import 'package:shop/app/widgets/text_container.dart';
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
            backgroundColor: ColorPalette.backgroundColor,
            appBar: AppBar(
              backgroundColor: ColorPalette.appBarColor,
              title: Text(widget.vinylRecord.name),
            ),
            body: Container(
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                        width: double.infinity,
                        child: ElevatedButton(
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
                            fixedSize: MaterialStateProperty.all(
                                const Size(double.infinity, 40)),
                            backgroundColor: MaterialStateProperty.all(
                                ColorPalette.appBarColor),
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
                      TextContainer(
                        text: widget.vinylRecord.name,
                        style: Style.vinylName,
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 2),
                      ),
                      TextContainer(
                        text: widget.vinylRecord.author,
                        style: Style.vinylAuthor,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 7),
                      ),
                      const Line(),
                      TextContainer(
                        text: AppLocalization.of(context)!.cost +
                            ': ' +
                            widget.vinylRecord.cost +
                            ' \$',
                        style: Style.vinylCost,
                        padding: const EdgeInsets.fromLTRB(10, 8, 0, 8),
                      ),
                      const Line(),
                      TextContainer(
                        text: widget.vinylRecord.description,
                        style: Style.vinylDescription,
                        padding: const EdgeInsets.fromLTRB(10, 8, 0, 8),
                      ),
                      Row(
                        children: [
                          TextContainer(
                            text:
                                AppLocalization.of(context)!.vendorCode + ': ',
                            style: Style.vendorCode,
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
                          ),
                          const TextContainer(
                            text: '83834930',
                            style: Style.code,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          ),
                        ],
                      ),
                      const Line(),
                      TextContainer(
                        text: AppLocalization.of(context)!.options,
                        style: Style.options,
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 8),
                      ),
                      TextContainer(
                        text: AppLocalization.of(context)!.packingWidth+': 30 см',
                        style: Style.args,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
                      ),
                      TextContainer(
                        text: AppLocalization.of(context)!.packingHeight+': 30 см',
                        style: Style.args,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
                      ),
                      TextContainer(
                        text: AppLocalization.of(context)!.packingDepth+': 5 см',
                        style: Style.args,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
                      ),
                      TextContainer(
                        text: AppLocalization.of(context)!.manufacturerCountry+': Italy',
                        style: Style.args,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
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
