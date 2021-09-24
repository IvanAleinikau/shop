import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_purchase/purchase_bloc.dart';
import 'package:shop/core/bloc/bloc_purchase/purchase_event.dart';
import 'package:shop/core/bloc/bloc_purchase/purchase_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/purchase_model.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PurchaseBloc>(
      create: (context) => PurchaseBloc(),
      child: BlocBuilder<PurchaseBloc, PurchaseState>(
        builder: (context, state) {
          final PurchaseBloc _bloc = BlocProvider.of<PurchaseBloc>(context);
          return Scaffold(
            backgroundColor: ColorPalette.backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: ColorPalette.appBarColor,
              title: Text(
                AppLocalization.of(context)!.orders,
                style: ThemeProvider.getTheme().textTheme.headline3,
              ),
            ),
            body: state.when(
              initState: () {
                _bloc.add(PurchaseEvent.fetchHistory());
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              content: (List<Purchase> list) {
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
                      child: Card(
                        color: ColorPalette.cardColor,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: Image.network(
                                          list[index].vinylRecord.image),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          list[index].vinylRecord.name,
                                          style: const TextStyle(
                                            fontSize: FontSize.newsTitleFont,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Karla',
                                          ),
                                        ),
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 10, 0),
                                      ),
                                      Container(
                                        child: Text(
                                          list[index].vinylRecord.author,
                                          style: const TextStyle(
                                            fontSize: FontSize.newsTextFont,
                                            fontFamily: 'Karla',
                                          ),
                                        ),
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 3, 10, 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const CustomDivider(),
                            Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 8, 0, 8),
                                  child: Text(
                                    list[index].vinylRecord.cost + ' \$',
                                    style: const TextStyle(
                                      color: ColorPalette.costColor,
                                      fontSize: FontSize.costFont,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    ' x ${list[index].count}',
                                    style: const TextStyle(
                                      fontSize: FontSize.costFont,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
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
              contentEmpty: () {
                return Center(
                  child: Text(
                    AppLocalization.of(context)!.notOrders,
                    style: ThemeProvider.getTheme().textTheme.headline3,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
