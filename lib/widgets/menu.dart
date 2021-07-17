import 'package:flutter/material.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/authScreen/login_page.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text("Menu"),
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          ListTile(
            title: Text('Shop'),
            leading: Icon(Icons.shopping_bag),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
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
