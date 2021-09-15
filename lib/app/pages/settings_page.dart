import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/control_page.dart';
import 'package:shop/app/pages/user_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_settings/settings_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_event.dart';
import 'package:shop/core/bloc/bloc_settings/settings_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingBloc>(
      create: (context) => SettingBloc(),
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          state.when(
            initState: () {},
            loading: () {
              BlocProvider.of<SettingBloc>(context).add(ResetPage());
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
          return Scaffold(
            backgroundColor: ColorPalette.backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: ColorPalette.appBarColor,
              title: Text(
                AppLocalization.of(context)!.settings,
                style: ThemeProvider.getTheme().textTheme.headline2,
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.admin_panel_settings,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ControlPage()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.account_circle,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserPage()),
                    );
                  },
                ),
              ],
            ),
            body: Container(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                children: [
                  SizedBox(
                    child: Text(
                      AppLocalization.of(context)!.settings,
                      style: const TextStyle(
                        fontSize: FontSize.settingsFont,
                      ),
                    ),
                  ),
                  const CustomDivider(),
                  _switchLanguage(context),
                ],
              ),
            ),
            drawer: const Menu(),
          );
        },
      ),
    );
  }

  Widget _switchLanguage(context) {
    return ListTile(
      title: Text(
        AppLocalization.of(context)!.changeLanguage,
        style: const TextStyle(
          fontSize: FontSize.settingsFont,
        ),
      ),
      leading: const Icon(
        Icons.language,
        size: FontSize.iconFont,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: Text(AppLocalization.of(context)!.chooseLanguage),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('English'),
                      onTap: () {
                        BlocProvider.of<SettingBloc>(context).add(LoadEng());
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: const Text('Русский'),
                      onTap: () {
                        BlocProvider.of<SettingBloc>(context).add(LoadRus());
                        Navigator.of(context).pop();
                      },
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
