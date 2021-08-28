import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/purchase_repository.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  PurchaseRepository repository = PurchaseRepository();

  ShoppingCartBloc() : super(ShoppingCartState.initState());

  @override
  Stream<ShoppingCartState> mapEventToState(ShoppingCartEvent event) async* {
    if (event is FetchShoppingCartEvent) {
      yield ShoppingCartState.content(FirebaseFirestore.instance.collection('purchase').snapshots(),user);
    }
    if (event is CreateShoppingCart) {
      PurchaseRepository().makePurchase(Purchase(
          user: user.toString(),
          isActive: true,
          vinylRecord: VinylRecord(
            name: event.name,
            author: event.author,
            year: event.year,
            description: event.description,
            cost: event.cost,
            image: event.image,
          )));
    }
    if(event is ShoppingCartEmpty){
      yield ShoppingCartState.contentEmpty();
    }
  }
}
