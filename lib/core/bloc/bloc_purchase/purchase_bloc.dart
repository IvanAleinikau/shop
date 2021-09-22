import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_purchase/purchase_event.dart';
import 'package:shop/core/bloc/bloc_purchase/purchase_state.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/data/service/history_of_orders_service.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final service = GetIt.instance<HistoryOfOrdersService>();
  String? user = FirebaseAuth.instance.currentUser!.email;
  late List<Purchase> orders;
  late List<Purchase> currentUserOrders;

  PurchaseBloc() : super(PurchaseState.initState());

  @override
  Stream<PurchaseState> mapEventToState(PurchaseEvent event) async* {
    yield* event.map(
      fetchHistory: _fetchHistory,
      addPurchase: _addPurchase,
    );
  }

  Stream<PurchaseState> _fetchHistory(FetchHistory event) async* {
    orders = [];
    currentUserOrders = [];
    orders = await service.fetchPurchase();
    try {
      for (int i = 0; i < orders.length; i++) {
        if (orders[i].user == user) {
          currentUserOrders.add(orders[i]);
        }
      }
      if (currentUserOrders.isNotEmpty) {
        yield PurchaseState.content(currentUserOrders);
      } else {
        yield PurchaseState.contentEmpty();
      }
    } catch (_) {
      print(_);
      yield PurchaseState.error();
    }
  }

  Stream<PurchaseState> _addPurchase(AddPurchase event) async* {
    await service.makePurchaseHistory(event.list);
  }
}
