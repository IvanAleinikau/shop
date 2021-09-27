import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/purchase_model.dart';

part 'purchase_event.freezed.dart';

@freezed
abstract class PurchaseEvent with _$PurchaseEvent {

  factory PurchaseEvent.fetchHistory() = FetchHistory;

  factory PurchaseEvent.addPurchase(List<Purchase> list) = AddPurchase;
}
