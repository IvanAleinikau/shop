import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/pages/shopping_cart_page.dart';
import 'package:shop/widgets/vinyl_record.dart';
import 'package:shop/core/search/search.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:shop/widgets/forms_of_creation/make_vinyl_record.dart';

import 'video_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VinylRecordBloc, VinylRecordState>(
      builder: (context, state) {
        final VinylRecordBloc _bloc = BlocProvider.of<VinylRecordBloc>(context);
        BlocProvider.of<VinylRecordBloc>(context).add(FetchVinylRecord());
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            title: Text(
              AppLocalization.of(context)!.shop,
              style: const TextStyle(
                fontFamily: 'Oxygen',
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {
                  showSearch(context: context, delegate: Search(_bloc.names));
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
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
                return Scrollbar(
                  controller: _scrollController,
                  child: GridView.count(
                    childAspectRatio: 0.66,
                    crossAxisCount: 2,
                    children: List.generate(
                      list.length,
                      (index) {
                        if (list.length > _bloc.names.length) {
                          BlocProvider.of<VinylRecordBloc>(context).add(NameToList(list[index].name));
                        }
                        return Hero(
                          tag: 'vinyl${index.toString()}',
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
                                  builder: (context) => ObjVinylRecord(list[index].name, index),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(17),
                                child: Card(
                                  color: Colors.transparent,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image.network(list[index].image),
                                      ),
                                      ListTile(
                                        title: Text(
                                          list[index].name,
                                          style: const TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        subtitle: Text(
                                          list[index].author,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
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
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
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
                                                    style: const TextStyle(fontFamily: 'Oxygen'),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all(
                                                      Colors.black54,
                                                    ),
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
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              contentEmpty: () {
                return const Center(
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
              error: () {
                return const Center(
                  child: Text(
                    'Something wrong',
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
                builder: (BuildContext context) {
                  return MakeVinylRecord();
                },
              );
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.black45,
          ),
        );
      },
    );
  }
}
