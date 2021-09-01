import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_model.freezed.dart';

@freezed
class Purchase with _$Purchase {
  factory Purchase({
    required String user,
    required bool isActive,
    required VinylRecord vinylRecord,}
  ) = _Purchase;
}
