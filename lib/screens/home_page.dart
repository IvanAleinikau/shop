import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/widgets/menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop/repository/repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _title = TextEditingController();
  TextEditingController _text = TextEditingController();
  TextEditingController _image = TextEditingController();
  TextEditingController _date = TextEditingController();

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Scaffold(),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Add news'),
                  content: SingleChildScrollView(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: _title,
                          decoration: InputDecoration(
                            labelText: 'Title',
                            hintText: 'Enter title',
                          ),
                        ),
                        TextField(
                          controller: _text,
                          decoration: InputDecoration(
                            labelText: 'Text',
                            hintText: 'Enter text',
                          ),
                        ),
                        TextField(
                          controller: _image,
                          decoration: InputDecoration(
                            labelText: 'Image',
                            hintText: 'Enter URL',
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        RemDataRepImpl().makeNews(_title.text.trim(), _text.text.trim(), _image.text.trim());

                        Navigator.of(context).pop();
                      },
                      child: Text('Add'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      ),)
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
