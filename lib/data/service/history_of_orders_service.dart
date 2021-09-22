import 'package:get_it/get_it.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/data/repositories/history_of_orders_repository.dart';

class HistoryOfOrdersService{
  final repository = GetIt.instance<HistoryOfOrdersRepository>();

  Future<void> makePurchaseHistory(List<Purchase> list) async {
    await repository.makePurchaseHistory(list);
  }

  Future<List<Purchase>> fetchPurchase() async {
    return await repository.fetchPurchase();
  }
}