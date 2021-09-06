import 'package:get_it/get_it.dart';
import 'package:shop/data/repositories/auth_repository.dart';
import 'package:shop/data/repositories/local_database_repository.dart';
import 'package:shop/data/repositories/news_repository.dart';
import 'package:shop/data/repositories/purchase_repository.dart';
import 'package:shop/data/repositories/vinyl_record_repository.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(NewsRepository());
    GetIt.instance.registerSingleton(VinylRecordRepository());
    GetIt.instance.registerSingleton(PurchaseRepository());
    GetIt.instance.registerSingleton(LocalDatabaseRepository());
    GetIt.instance.registerSingleton(AuthRepository());
  }
}
