import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalization.of(context)!.settings,
          style: TextStyle(fontFamily: 'Oxygen'),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/image/image.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          children: [
            SizedBox(
              child: Text(
                AppLocalization.of(context)!.account,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.changePassword,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              leading: Icon(
                Icons.account_tree_sharp,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title:
                            Text(AppLocalization.of(context)!.changePassword),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: _password,
                                decoration: InputDecoration(
                                  labelText:
                                      AppLocalization.of(context)!.newPassword,
                                  hintText: AppLocalization.of(context)!
                                      .enterNewPassword,
                                ),
                              ),
                              TextField(
                                controller: _confirm,
                                decoration: InputDecoration(
                                  labelText: AppLocalization.of(context)!
                                      .confirmNewPassword,
                                  hintText: AppLocalization.of(context)!
                                      .enterNewPassword,
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(AppLocalization.of(context)!.cancel),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_password.text.trim() ==
                                  _confirm.text.trim()) {
                                Auth()
                                    .resetPassword(_password.text.trim())
                                    .then((value) {
                                  if (value == "Reset was successful") {
                                    Navigator.of(context).pop();
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text(value)));
                                  }
                                });
                              }
                            },
                            child: Text(AppLocalization.of(context)!.change),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                          ),
                        ],
                      );
                    });
              },
            ),
            SizedBox(
              child: Text(
                AppLocalization.of(context)!.settings,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              height: 12.0,
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                AppLocalization.of(context)!.changeLanguage,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              leading: Icon(
                Icons.language,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title:
                              Text(AppLocalization.of(context)!.chooseLanguage),
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text('English'),
                                  onTap: () {
                                    setState(() {
                                      AppLocalization.load(Locale('en', 'US'));
                                      Navigator.of(context).pop();
                                    });
                                  },
                                ),
                                ListTile(
                                  title: Text('Русский'),
                                  onTap: () {
                                    setState(() {
                                      AppLocalization.load(Locale('ru', 'RUS'));
                                      Navigator.of(context).pop();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ));
                    });
              },
            ),
          ],
        ),
      ),
      drawer: Menu(),
    );
  }
}
