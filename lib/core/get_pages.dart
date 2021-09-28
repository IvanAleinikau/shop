import 'package:get/get.dart';
import 'package:shop/app/pages/export_pages.dart';
import 'package:shop/core/models/vinyl_record_model.dart';

class GetPages {
  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(name: '/account', page: () => const AccountPage()),
      GetPage(name: '/control', page: () => ControlPage()),
      GetPage(name: '/fqa', page: () => const FQAPage()),
      GetPage(name: '/login', page: () => LoginPage()),
      GetPage(name: '/map', page: () => const Maps()),
      GetPage(name: '/news', page: () => const NewsPage()),
      GetPage(name: '/orders', page: () => const OrdersPage()),
      GetPage(name: '/register', page: () => RegisterPage()),
      GetPage(name: '/saved_news', page: () => const SavedNewsPage()),
      GetPage(name: '/settings', page: () => const SettingsPage()),
      GetPage(name: '/shop', page: () => const ShopPage()),
      GetPage(name: '/shopping_cart', page: () => const ShoppingCartPage()),
      GetPage(name: '/user', page: () => const UserPage()),
      GetPage(name: '/video', page: () => const VideoPlayerScreen()),
    ];
  }
}
