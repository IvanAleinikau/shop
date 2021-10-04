import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/app/pages/account_page.dart';
import 'package:shop/app/pages/export_pages.dart';
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
    UserPage(),
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
            backgroundColor: ColorPalette.bottomBarColor,
          ),
           BottomNavigationBarItem(
            icon: const Icon(
              Icons.shopping_bag,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.shop,
            backgroundColor: ColorPalette.bottomBarColor,
          ),
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.auto_awesome_motion,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.other,
            backgroundColor: ColorPalette.bottomBarColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.account_circle,
              size: FontSize.bottomBarIconFont,
            ),
            label: AppLocalization.of(context)!.account,
            backgroundColor: ColorPalette.bottomBarColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorPalette.iconBarColor,
        onTap: _onItemTapped,
        unselectedIconTheme: const IconThemeData(
            color: ColorPalette.unselectedItemColor
        ),
      ),
    );
  }
}
