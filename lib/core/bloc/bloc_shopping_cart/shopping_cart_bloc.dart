import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/service/purchase_service.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  final service = GetIt.instance<PurchaseService>();
  late Purchase purchase;
  late VinylRecord vinylRecord;
  late List<Purchase> allPurchase;
  late List<Purchase> currentUserPurchase;
  int totalCost = 0;

  ShoppingCartBloc() : super(ShoppingCartState.initState());

  @override
  Stream<ShoppingCartState> mapEventToState(ShoppingCartEvent event) async* {
    yield* event.map(
      fetchShoppingCart: _fetchShoppingCart,
      empty: _empty,
      createShoppingCart: _createShoppingCart,
      increment: _increment,
      decrement: _decrement,
      delete: _delete,
    );
  }

  Stream<ShoppingCartState> _delete(Delete event) async* {
    await service.delete(event.index);
  }

  Stream<ShoppingCartState> _increment(CountIncrement event) async* {
    await service.incrementCount(event.count, event.index);
  }

  Stream<ShoppingCartState> _decrement(CountDecrement event) async* {
    await service.decrementCount(event.count, event.index);
  }

  Stream<ShoppingCartState> _fetchShoppingCart(FetchShoppingCartEvent event) async* {
    allPurchase = [];
    currentUserPurchase = [];
    totalCost = 0;
    allPurchase = await service.fetchPurchase();
    try {
      for (int i = 0; i < allPurchase.length; i++) {
        if (allPurchase[i].user == user) {
          currentUserPurchase.add(allPurchase[i]);
        }
      }
      for (int i = 0; i < currentUserPurchase.length; i++) {
        totalCost += currentUserPurchase[i].count * int.parse(currentUserPurchase[i].vinylRecord.cost);
      }
      yield ShoppingCartState.content(currentUserPurchase, totalCost);
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
      isActive: false,
      vinylRecord: vinylRecord,
      count: 1,
    );
    service.makePurchase(purchase);
  }
}
