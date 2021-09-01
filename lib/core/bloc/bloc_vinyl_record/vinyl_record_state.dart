import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

part 'vinyl_record_state.freezed.dart';

@freezed
abstract class VinylRecordState with _$VinylRecordState {
  factory VinylRecordState.initState() = _InitState;

  factory VinylRecordState.loading() = _VinylRecordLoading;

  factory VinylRecordState.content(List<VinylRecord> list) = _VinylRecordContent;

  factory VinylRecordState.contentEmpty() = _VinylRecordContentEmpty;

  factory VinylRecordState.error() = _VinylRecordError;
}
