import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_event.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_state.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/purchase_repository.dart';

class ShoppingCartBloc extends Bloc<ShoppingCarEvent,ShoppingCarState>{
  String? user = FirebaseAuth.instance.currentUser!.email;

  ShoppingCartBloc() : super(ShoppingCartInitState());

  @override
  Stream<ShoppingCarState> mapEventToState(ShoppingCarEvent event) async* {
    if(event is LoadPurchase){
      yield ShoppingCartLoaded();
    }else if (event is CreatePurchase){
      PurchaseRepository().makePurchase(Purchase(user.toString(), true, VinylRecord(event.name, event.author, event.year, event.description, event.cost, event.image)));
      yield ShoppingCartLoaded();
    }
  }

}