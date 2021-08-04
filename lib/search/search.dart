import 'package:flutter/material.dart';
import 'package:shop/widgets/shop/vinyl_record.dart';

class Search extends SearchDelegate {
  List<String> names = [];
  String selectedResult = '';

  Search(this.names);

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Text(''),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? names
        : names.where((element) => element.contains(query)).toList();
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade400
      ),
      child: ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.album),
              title: RichText(
                text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    children: [
                      TextSpan(
                          text: suggestionList[index].substring(query.length),
                          style: TextStyle(color: Colors.black54, fontSize: 20))
                    ]),
              ),
              onTap: () {
                selectedResult = suggestionList[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ObjVinylRecord(selectedResult,index)),
                );
              },
            );
          }),
    );
  }
}
