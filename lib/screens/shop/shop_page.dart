import 'package:flutter/material.dart';
import 'package:shop/screens/shop/shopping_cart_page.dart';
import 'package:shop/screens/shop/vinyl_record_page.dart';
import 'package:shop/widgets/menu.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()),);
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.album),
              ),
              Tab(
                icon: Icon(Icons.watch),
              ),
              Tab(
                icon: Icon(Icons.account_balance_wallet_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: VinylRecordPage(),
            ),
            Container(
              child: Text(""),
            ),
            Center(
              child: Text("It's cloudy here"),
            ),
          ],
        ),
        drawer: Menu(),
      ),
    );
  }
}
