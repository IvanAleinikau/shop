import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/control_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_settings/settings_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_event.dart';
import 'package:shop/core/bloc/bloc_settings/settings_state.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/navigator_service.dart';

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
          final SettingBloc _bloc = BlocProvider.of<SettingBloc>(context);
          state.when(
            initState: () {},
            loading: () {
              _bloc.add(ResetPage());
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
                    NavigatorService().navigateTo(Pages.control);
                  },
                ),
              ],
            ),
            body: Container(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                children: [
                  const CustomDivider(),
                  _userDetails(context),
                  const CustomDivider(),
                  _switchLanguage(context, _bloc),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _switchLanguage(context, SettingBloc _bloc) {
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
      trailing: const Icon(
        Icons.arrow_forward_ios,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              backgroundColor: ColorPalette.backgroundColor,
              title: Text(AppLocalization.of(context)!.chooseLanguage),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<Languages>(
                        value: Languages.english,
                        groupValue: _bloc.language,
                        onChanged: (Languages? value) {},
                      ),
                      title: const Text('English'),
                      onTap: () {
                        BlocProvider.of<SettingBloc>(context).add(LoadEng());
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Radio<Languages>(
                        value: Languages.russian,
                        groupValue: _bloc.language,
                        onChanged: (Languages? value) {},
                      ),
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

  Widget _userDetails(context) {
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
            return Row(
              children: [
                const Flexible(
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: FontSize.settingsUserIconFont,
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          user.firstName + ' ' + user.surname,
                          style: const TextStyle(
                            fontSize: FontSize.nameFont,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                      ),
                      Container(
                        child: Text(
                          user.email,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
