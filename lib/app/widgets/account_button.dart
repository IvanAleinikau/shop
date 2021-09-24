import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget Function() page;

  const ButtonListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListTile(
          title: Text(title),
          leading: Icon(icon),
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => page()),
            );
          },
        ),
      ),
    );
  }
}
