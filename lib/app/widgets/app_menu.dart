import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/fqa_page.dart';
import 'package:shop/app/pages/news_page.dart';
import 'package:shop/app/pages/saved_news_page.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/pages/shop_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/localization/app_localization.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String? user = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/image2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                accountName: Text(
                  AppLocalization.of(context)!.email,
                ),
                accountEmail: Text(user!),
                currentAccountPicture: const Icon(
                  Icons.account_circle_sharp,
                  color: ColorPalette.whiteColor,
                  size: 70,
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            const CustomDivider(),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.home,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.home,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.shop,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.shopping_bag,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.savedNews,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.announcement_sharp,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SavedNewsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.settings,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.settings,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
            const CustomDivider(),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.faq,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.question_answer,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FQAPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.logout,
                style: ThemeProvider.getTheme().textTheme.headline1,
              ),
              leading: const Icon(
                Icons.logout,
                color: ColorPalette.whiteColor,
              ),
              onTap: () {
                BlocProvider.of<AuthBloc>(context).add(LogOutEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}
