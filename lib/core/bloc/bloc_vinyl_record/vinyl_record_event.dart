import 'package:freezed_annotation/freezed_annotation.dart';

part 'vinyl_record_event.freezed.dart';

@freezed
abstract class VinylRecordEvent with _$VinylRecordEvent {

  factory VinylRecordEvent.fetchNews() = FetchVinylRecord;

  factory VinylRecordEvent.empty() = VinylRecordEmpty;

  factory VinylRecordEvent.createVinylRecord(String name, String author ,String year, String description, String cost, String image) = CreateVinylRecord;

  factory VinylRecordEvent.nameToList(String name) = NameToList;
}


