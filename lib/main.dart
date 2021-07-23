import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop/widgets/news/list_news.dart';
import 'package:shop/screens/shop_page.dart';
import 'package:shop/screens/splash.dart';
import 'package:shop/screens/settings_page.dart';


void main(){
  Firebase.initializeApp();
  runApp(App());
} 

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/settings':(context)=> SettingsPage(),
        '/shop':(context)=> ShopPage(),
      },
    );
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Splash();
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}




