import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/app/pages/account_page.dart';
import 'package:shop/app/pages/news_page.dart';
import 'package:shop/app/pages/shop_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/core/localization/app_localization.dart';

class AppMenu extends StatefulWidget {
  @override
  _AppMenuState createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NewsPage(),
    ShopPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              CupertinoIcons.news_solid,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.news,
          ),
           BottomNavigationBarItem(
            icon: const Icon(
              Icons.shopping_bag,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.shop,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.account_circle,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.account,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorPalette.iconBarColor,
        onTap: _onItemTapped,
        backgroundColor: ColorPalette.bottomBarColor,
        unselectedIconTheme: const IconThemeData(
            color: ColorPalette.unselectedItemColor
        ),
      ),
    );
  }
}
