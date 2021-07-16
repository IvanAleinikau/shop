import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

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
            onTap: () {},
          ),

        ],
      ),
    );
  }
}
