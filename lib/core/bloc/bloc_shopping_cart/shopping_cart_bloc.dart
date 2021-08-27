import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/purchase_repository.dart';

class ShoppingCartBloc extends Bloc<ShoppingCarEvent, ShoppingCarState> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  ShoppingCartBloc() : super(ShoppingCartInitState());

  @override
  Stream<ShoppingCarState> mapEventToState(ShoppingCarEvent event) async* {
    if (event is LoadPurchase) {
      yield ShoppingCartLoaded();
    } else if (event is CreatePurchase) {
      PurchaseRepository().makePurchase(Purchase(
          user : user.toString(),
          isActive : true,
          vinylRecord: VinylRecord(
            name: event.name,
            author: event.author,
            year: event.year,
            description: event.description,
            cost: event.cost,
            image: event.image,
          )));
      yield ShoppingCartLoaded();
    }
  }
}
