import 'dart:async';

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
  late Purchase purchase;
  late VinylRecord vinylRecord;
  late List<Purchase> allPurchase;
  late List<Purchase> currentUserPurchase;

  ShoppingCartBloc() : super(ShoppingCartState.initState());

  @override
  Stream<ShoppingCartState> mapEventToState(ShoppingCartEvent event) async* {
    yield* event.map(
      fetchShoppingCart: _fetchShoppingCart,
      empty: _empty,
      createShoppingCart: _createShoppingCart,
    );
  }

  Stream<ShoppingCartState> _fetchShoppingCart(FetchShoppingCartEvent event) async* {
    allPurchase = [];
    currentUserPurchase = [];
    allPurchase = await repository.fetchPurchase();
    try {
      for (int i = 0; i < allPurchase.length; i++) {
        if (allPurchase[i].user == user) {
          currentUserPurchase.add(allPurchase[i]);
        }
      }
      yield ShoppingCartState.content(currentUserPurchase);
    } catch (_) {
      yield ShoppingCartState.error();
    }
  }

  Stream<ShoppingCartState> _empty(ShoppingCartEmpty event) async* {
    yield ShoppingCartState.contentEmpty();
  }

  Stream<ShoppingCartState> _createShoppingCart(CreateShoppingCart event) async* {
    vinylRecord = VinylRecord(
      name: event.name,
      author: event.author,
      year: event.year,
      description: event.description,
      cost: event.cost,
      image: event.image,
    );
    purchase = Purchase(
      user: user.toString(),
      isActive: true,
      vinylRecord: vinylRecord,
    );
    repository.makePurchase(purchase);
  }
}
