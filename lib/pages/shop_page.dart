import 'package:cloud_firestore/cloud_firestore.dart';
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
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            title: Text(
              AppLocalization.of(context)!.shop,
              style: const TextStyle(fontFamily: 'Oxygen'),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: Search(_bloc.names));
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShoppingCartPage()),
                  );
                },
              )
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Scrollbar(
              controller: _scrollController,
              child: state is VinylRecordLoaded
                  ? StreamBuilder(
                      stream: state.vinylRecordRef,
                      builder: (context,
                          AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                        if (streamSnapshot.hasData) {
                          return GridView.count(
                            childAspectRatio: 0.66,
                            crossAxisCount: 2,
                            children: List.generate(streamSnapshot.data!.size,
                                (index) {
                              if (streamSnapshot.data!.docs.length >
                                  _bloc.names.length) {
                                _bloc.add(AddName(
                                    streamSnapshot.data!.docs[index]['name']));
                              }
                              return Hero(
                                  tag: 'vinyl${index.toString()}',
                                  child: GestureDetector(
                                    onLongPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const VideoPlayerScreen()),
                                      );
                                    },
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ObjVinylRecord(
                                                    streamSnapshot.data!
                                                        .docs[index]['name'],
                                                    index)),
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
                                                child: Image.network(
                                                    streamSnapshot.data!
                                                        .docs[index]['image']),
                                              ),
                                              ListTile(
                                                title: Text(
                                                  streamSnapshot.data!
                                                      .docs[index]['name'],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                ),
                                                subtitle: Text(
                                                  streamSnapshot.data!
                                                      .docs[index]['author'],
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.zero,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: Text(
                                                            streamSnapshot.data!
                                                                            .docs[
                                                                        index]
                                                                    ['cost'] +
                                                                '\$',
                                                            style:
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        )),
                                                    Container(
                                                      height: 20,
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 0, 2, 2),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            BlocProvider.of<
                                                                        ShoppingCartBloc>(
                                                                    context)
                                                                .add(
                                                                    CreatePurchase(
                                                              name: streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index]
                                                                  ['name'],
                                                              author: streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index]
                                                                  ['author'],
                                                              year: streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index]
                                                                  ['year'],
                                                              description:
                                                                  streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index]['description'],
                                                              cost: streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index][
                                                                  'cost'],
                                                              image: streamSnapshot
                                                                          .data!
                                                                          .docs[
                                                                      index]
                                                                  ['image'],
                                                            ));
                                                          },
                                                          child: Text(
                                                              AppLocalization.of(
                                                                      context)!
                                                                  .buy,
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'Oxygen')),
                                                          style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all(Colors
                                                                        .black54),
                                                            textStyle:
                                                                MaterialStateProperty
                                                                    .all(
                                                              const TextStyle(),
                                                            ),
                                                            shape: MaterialStateProperty
                                                                .all(
                                                                    RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            )),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ));
                            }),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    )
                  : Container(
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ),
          ),
          drawer: const Menu(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MakeVinylRecord();
                  });
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.black45,
          ),
        );
      },
    );
  }
}
