import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vinyl_record_state.freezed.dart';

@freezed
abstract class VinylRecordState with _$VinylRecordState{
  factory VinylRecordState.initState() = _InitState;

  factory VinylRecordState.loading() = _VinylRecordLoading;

  factory VinylRecordState.content(Stream<QuerySnapshot<Map<String, dynamic>>> name) = _VinylRecordContent;

  factory VinylRecordState.contentEmpty() = _VinylRecordContentEmpty;

  factory VinylRecordState.error() = _VinylRecordError;
}

