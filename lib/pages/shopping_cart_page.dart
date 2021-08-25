import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/pages/maps_page.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc,ShoppingCarState>(builder: (context,state){
      final ShoppingCartBloc _bloc = BlocProvider.of<ShoppingCartBloc>(context);
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            title: Text(
              AppLocalization.of(context)!.cart,
              style: const TextStyle(fontFamily: 'Oxygen'),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Maps()),
                  );
                },
              ),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'), fit: BoxFit.cover),
            ),
            child: state is ShoppingCartLoaded ? StreamBuilder(
              stream:
              state.shoppingCartRef,
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return GridView.count(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    children:
                    List.generate(streamSnapshot.data!.docs.length, (index) {
                      return streamSnapshot.data!.docs[index]['user'] == _bloc.user
                          ? Container(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Card(
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image.network(streamSnapshot
                                      .data!.docs[index]['image']),
                                ),
                                ListTile(
                                  title: Text(
                                    streamSnapshot.data!.docs[index]
                                    ['name'],
                                    style: const TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    streamSnapshot.data!.docs[index]
                                    ['author'],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  trailing: Text(
                                    streamSnapshot.data!.docs[index]
                                    ['cost'] +
                                        '\$',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          : Container();
                    }),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ) : Container(child: const Center(child: CircularProgressIndicator(),),),
          ));
    },);
  }
}
