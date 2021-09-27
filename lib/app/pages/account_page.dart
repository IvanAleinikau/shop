import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/fqa_page.dart';
import 'package:shop/app/pages/orders_page.dart';
import 'package:shop/app/pages/saved_news_page.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/pages/user_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/account_button.dart';
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
                        CupertinoPageRoute(
                            builder: (context) => const UserPage()),
                      );
                    },
                  ),
                ],
              ),
              body: Container(
                color: ColorPalette.backgroundColor,
                child: Column(
                  children: [
                    ButtonListTile(
                      title: AppLocalization.of(context)!.settings,
                      icon: Icons.settings,
                      page: () => const SettingsPage(),
                    ),
                    ButtonListTile(
                      title:AppLocalization.of(context)!.savedNews,
                      icon: Icons.announcement_sharp,
                      page: () => const SavedNewsPage(),
                    ),
                    ButtonListTile(
                      title: AppLocalization.of(context)!.faq,
                      icon: Icons.question_answer,
                      page: () => const FQAPage(),
                    ),
                    ButtonListTile(
                      title: AppLocalization.of(context)!.orders,
                      icon: Icons.local_shipping_rounded,
                      page: () => const OrdersPage(),
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
