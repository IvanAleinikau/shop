import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/navigator_service.dart';

class ButtonListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Pages page;

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
            GetIt.instance<NavigatorService>().navigateTo(page);
          },
        ),
      ),
    );
  }
}
