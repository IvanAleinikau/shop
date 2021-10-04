import 'package:get/get.dart';

class NavigatorService {
  void navigateTo(dynamic page) {
    late String route;

    switch (page) {
      case Pages.savedNews:
        route = '/saved_news';
        break;
      case Pages.settings:
        route = '/settings';
        break;
      case Pages.fqa:
        route = '/fqa';
        break;
      case Pages.orders:
        route = '/orders';
        break;
      case Pages.user:
        route = '/user';
        break;
      case Pages.shoppingCart:
        route = '/shopping_cart';
        break;
      case Pages.control:
        route = '/control';
        break;
      case Pages.vinylRecord:
        route = '/vinyl_record';
        break;
      case Pages.home:
        route = '/home';
        break;
      case Pages.login:
        route = '/login';
        break;
    }
    Get.toNamed(route);
  }

  void close() {
    Get.back();
  }
}

enum Pages {
  account,
  control,
  fqa,
  login,
  map,
  news,
  orders,
  register,
  savedNews,
  settings,
  shop,
  shoppingCart,
  user,
  video,
  vinylRecord,
  home,
}
