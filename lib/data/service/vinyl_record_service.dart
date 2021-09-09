import 'package:get_it/get_it.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/vinyl_record_repository.dart';

class VinylRecordService{
  final repository = GetIt.instance<VinylRecordRepository>();

  Future<String> makeVinylRecord(VinylRecord vinylRecord) async{
    return await repository.makeVinylRecord(vinylRecord);
  }

  Future<List<VinylRecord>> fetchVinylRecord() async{
    return await repository.fetchVinylRecord();
  }
}