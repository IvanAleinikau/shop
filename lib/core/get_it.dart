import 'package:get_it/get_it.dart';
import 'package:shop/data/service/auth_service.dart';
import 'package:shop/data/service/news_service.dart';
import 'package:shop/data/service/purchase_service.dart';
import 'package:shop/data/service/question_answer_service.dart';
import 'package:shop/data/repositories/auth_repository.dart';
import 'package:shop/data/repositories/question_answer_repository.dart';
import 'package:shop/data/repositories/saved_news_repository.dart';
import 'package:shop/data/repositories/news_repository.dart';
import 'package:shop/data/repositories/purchase_repository.dart';
import 'package:shop/data/repositories/vinyl_record_repository.dart';
import 'package:shop/data/service/saved_news_service.dart';
import 'package:shop/data/service/vinyl_record_service.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(NewsRepository());
    GetIt.instance.registerSingleton(VinylRecordRepository());
    GetIt.instance.registerSingleton(PurchaseRepository());
    GetIt.instance.registerSingleton(SavedNewsRepository());
    GetIt.instance.registerSingleton(AuthRepository());
    GetIt.instance.registerSingleton(QuestionAnswerRepository());

    GetIt.instance.registerSingleton(QuestionAnswerService());
    GetIt.instance.registerSingleton(AuthService());
    GetIt.instance.registerSingleton(NewsService());
    GetIt.instance.registerSingleton(PurchaseService());
    GetIt.instance.registerSingleton(SavedNewsService());
    GetIt.instance.registerSingleton(VinylRecordService());

    GetIt.instance<SavedNewsRepository>().initializeDatabase();
    GetIt.instance<QuestionAnswerRepository>().initializeDatabase();
  }
}
