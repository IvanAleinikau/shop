import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/widgets/menu.dart';
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
        title: Text(AppLocalization.of(context)!.settings),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        children: [
          SizedBox(
            child: Text(
              AppLocalization.of(context)!.account,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.changePassword),
            leading: Icon(
              Icons.account_tree_sharp,
              color: Colors.deepPurple,
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(AppLocalization.of(context)!.changePassword),
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
                            if (_password.text.trim() == _confirm.text.trim()) {
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
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurpleAccent),
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
                fontSize: 20.0,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          ListTile(
            title: Text(AppLocalization.of(context)!.changeLanguage),
            leading: Icon(
              Icons.language,
              color: Colors.deepPurple,
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
      drawer: Menu(),
    );
  }
}
