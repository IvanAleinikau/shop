import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/auth/login_page.dart';
import 'package:shop/screens/fqa_page.dart';
import 'package:shop/screens/news/home_page.dart';
import 'package:shop/screens/saved_news_page.dart';
import 'package:shop/screens/settings_page.dart';
import 'package:shop/screens/shop/shop_page.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/image/image2.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                accountName: Text(AppLocalization.of(context)!.email),
                accountEmail: Text('$user'),
                currentAccountPicture: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.white,
                  size: 70,
                ),
              ),
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            Divider(
              height: 10.0,
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.home,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.shop,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.savedNews,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.announcement_sharp,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavedNewsPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.settings,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.faq,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.question_answer,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FQAPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.logout,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oxygen', fontSize: 17),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onTap: () {
                Auth().signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
