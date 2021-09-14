import 'package:get_it/get_it.dart';
import 'package:shop/core/models/purchase_model.dart';
import 'package:shop/data/repositories/purchase_repository.dart';

class PurchaseService {
  final repository = GetIt.instance<PurchaseRepository>();

  Future<String> makePurchase(Purchase purchase) async {
    return await repository.makePurchase(purchase);
  }

  Future<List<Purchase>> fetchPurchase() async {
    return await repository.fetchPurchase();
  }

  Future<void> incrementCount(int count, int index) async {
    await repository.incrementCount(count, index);
  }

  Future<void> decrementCount(int count, int index) async {
    await repository.decrementCount(count, index);
  }

  Future<void> delete(int index) async {
    await repository.delete(index);
  }
}
