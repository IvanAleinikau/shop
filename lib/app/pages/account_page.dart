import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/fqa_page.dart';
import 'package:shop/app/pages/saved_news_page.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/pages/user_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          initState: () {
            BlocProvider.of<UserBloc>(context).add(FetchUser());
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          user: (user) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  AppLocalization.of(context)!.hello + ', ${user.firstName}!',
                  style: ThemeProvider.getTheme().textTheme.headline2,
                ),
                backgroundColor: ColorPalette.appBarColor,
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.account_circle_outlined,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const UserPage()),
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
                      borderRadius: BorderRadius.circular(28),
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: ListTile(
                          title: Text(AppLocalization.of(context)!.settings),
                          leading: const Icon(Icons.settings),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => const SettingsPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: ListTile(
                          title: Text(AppLocalization.of(context)!.savedNews),
                          leading: const Icon(Icons.announcement_sharp),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => const SavedNewsPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: ListTile(
                          title: Text(AppLocalization.of(context)!.faq),
                          leading: const Icon(Icons.question_answer),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => const FQAPage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
