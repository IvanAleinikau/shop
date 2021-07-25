import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/authScreen/login_page.dart';
import 'package:shop/screens/home_page.dart';
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
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountName: Text(AppLocalization.of(context)!.email),
              accountEmail: Text('$user'),
              currentAccountPicture: Icon(Icons.account_circle_sharp,color: Colors.white,size: 60,),
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.home),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
            },
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.shop),
            leading: Icon(Icons.shopping_bag),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage()),);
            },
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.savedNews),
            leading: Icon(Icons.announcement_sharp),
            onTap: () {

            },
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.settings),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()),);
            },
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.faq),
            leading: Icon(Icons.question_answer),
            onTap: () {

            },
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.logout),
            leading: Icon(Icons.logout),
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
    );
  }
}

