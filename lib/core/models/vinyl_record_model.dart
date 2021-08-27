import 'package:freezed_annotation/freezed_annotation.dart';

part 'vinyl_record_model.freezed.dart';

@freezed
class VinylRecord with _$VinylRecord {
  factory VinylRecord({
    required String name,
    required String author,
    required String year,
    required String description,
    required String cost,
    required String image,
  }) = _VinylRecord;
}
