import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/widgets/menu.dart';
import 'package:shop/provider/auth_provider.dart';

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
        title: Text('Settings'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        children: [
          SizedBox(
            child: Text('Account',style: TextStyle(
              fontSize: 20.0,color:Colors.deepPurple,
            ),),
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          ListTile(
            title: Text('Change password'),
            leading: Icon(Icons.account_tree_sharp , color: Colors.deepPurple,),
            onTap: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Change password'),
                      content: SingleChildScrollView(
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: _password,
                              decoration: InputDecoration(
                                labelText: 'New password',
                                hintText: 'Enter new password',
                              ),
                            ),
                            TextField(
                              controller: _confirm,
                              decoration: InputDecoration(
                                labelText: 'Confirm new password',
                                hintText: 'Enter new password',
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
                          child: Text('Cancel'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if(_password.text.trim()==_confirm.text.trim()){
                              Auth().resetPassword(_password.text.trim()).then((value) {
                                if(value=="Reset was successful"){
                                  Navigator.of(context).pop();
                                }else{
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(content: Text(value)));
                                }
                              });
                            }
                          },
                          child: Text('Change'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                          ),
                        ),
                      ],
                    );
                  });
            },
          ),
          SizedBox(
            child: Text('Settings',style: TextStyle(
              fontSize: 20.0,color:Colors.deepPurple,
            ),),
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          ListTile(
            title: Text('Change a language'),
            leading: Icon(Icons.language , color: Colors.deepPurple,),
            onTap: (){

            },
          ),
        ],
      ),
      drawer: Menu(),
    );
  }
}
