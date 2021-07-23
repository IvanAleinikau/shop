import 'package:flutter/material.dart';
import 'package:shop/widgets/shop_elements/make_vinyl_record.dart';

class MakeShopElement extends StatefulWidget {

  @override
  _MakeShopElementState createState() => _MakeShopElementState();
}

class _MakeShopElementState extends State<MakeShopElement> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Сhoose what you want to add'),
      content: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Vinyl record'),
              leading: Icon(Icons.album),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MakeVinylRecord()),);
              },
            ),
            ListTile(
              title: Text('Watch'),
              leading: Icon(Icons.watch),
              onTap: () {

              },
            ),
            ListTile(
              title: Text('Wallet'),
              leading: Icon(Icons.account_balance_wallet_sharp),
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
