import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_event.dart';
import 'package:shop/core/bloc/bloc_settings/settings_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/widgets/app_menu.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        state.when(initState: (){
        }, loading: () {
          BlocProvider.of<SettingBloc>(context).add(ResetPage());
          return const Center(child: CircularProgressIndicator(),);
        });
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              AppLocalization.of(context)!.settings,
              style: const TextStyle(fontFamily: 'Oxygen'),
            ),
            backgroundColor: Colors.black54,
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/image.jpg'),
                  fit: BoxFit.cover),
            ),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              children: [
                SizedBox(
                  child: Text(
                    AppLocalization.of(context)!.settings,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Divider(
                  height: 12.0,
                  color: Colors.white,
                ),
                ListTile(
                  title: Text(
                    AppLocalization.of(context)!.changeLanguage,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  leading: const Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: Text(
                                  AppLocalization.of(context)!.chooseLanguage),
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
                              ));
                        });
                  },
                ),
              ],
            ),
          ),
          drawer: const Menu(),
        );
      },
    );
  }
}
