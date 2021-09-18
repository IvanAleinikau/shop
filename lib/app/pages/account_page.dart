import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/saved_news_page.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/pages/user_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/localization/app_localization.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserBloc _bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context)!.hello+', ${_bloc.user.firstName}!'),
        backgroundColor: ColorPalette.appBarColor,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: ColorPalette.cardColor,
                child: ListTile(
                  title: Text(AppLocalization.of(context)!.settings),
                  leading: const Icon(Icons.settings),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsPage()),
                    );
                  },
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: ColorPalette.cardColor,
                child: ListTile(
                  title: Text(AppLocalization.of(context)!.savedNews),
                  leading: const Icon(Icons.announcement_sharp),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SavedNewsPage()),
                    );
                  },
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: ColorPalette.cardColor,
                child: ListTile(
                  title: Text(AppLocalization.of(context)!.faq),
                  leading: const Icon(Icons.question_answer),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SavedNewsPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
