import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final UserBloc _bloc = BlocProvider.of<UserBloc>(context);
        return Scaffold(
          backgroundColor: ColorPalette.backgroundColor,
          appBar: AppBar(
            backgroundColor: ColorPalette.appBarColor,
            title: Text(
              AppLocalization.of(context)!.myData,
              style: ThemeProvider.getTheme().textTheme.headline2,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(
                  CupertinoIcons.pen,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return _namesForm(context, state, _bloc);
                    },
                  );
                },
              ),
            ],
          ),
          body: state.when(
            initState: () {
              _bloc.add(FetchUser());
            },
            user: (user) {
              return Container(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.account_circle_sharp,
                            size: FontSize.userIconFont,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                                child: Text(
                                  user.firstName,
                                  style: const TextStyle(
                                    fontSize: FontSize.nameFont,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  user.surname,
                                  style: const TextStyle(
                                    fontSize: FontSize.surnameFont,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        _divider(),
                        ListTile(
                          title: Text(
                            AppLocalization.of(context)!.email,
                            style: const TextStyle(
                              fontSize: FontSize.emailFont,
                            ),
                          ),
                          subtitle: Text(user.email),
                        ),
                        ListTile(
                          title: Text(
                            AppLocalization.of(context)!.gender,
                            style: const TextStyle(
                              fontSize: FontSize.genderFont,
                            ),
                          ),
                          subtitle: Text(user.gender),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: ColorPalette.backgroundColor,
                              context: context,
                              builder: (ctx) {
                                return _genderForm(context, user, _bloc);
                              },
                            );
                          },
                        ),
                        ListTile(
                          title: Text(
                            AppLocalization.of(context)!.postOffice,
                            style: const TextStyle(
                              fontSize: FontSize.indexFont,
                            ),
                          ),
                          subtitle: Text(user.postOfficeIndex.toString()),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return _postOfficeForm(context, state, _bloc);
                              },
                            );
                          },
                        ),
                        _divider(),
                        ListTile(
                          title: Text(
                            AppLocalization.of(context)!.logout,
                            style: const TextStyle(
                              fontSize: FontSize.nameFont,
                              color: ColorPalette.dismissibleColor,
                            ),
                          ),
                          onTap: () {
                            BlocProvider.of<AuthBloc>(context).add(LogOutEvent());
                          },
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _divider() {
    return const Divider(
      color: ColorPalette.dividerColor,
      height: FontSize.dividerFont,
    );
  }

  Widget _namesForm(context, state, UserBloc _bloc) {
    final TextEditingController _firstName = TextEditingController();
    final TextEditingController _surname = TextEditingController();
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextField(
                controller: _firstName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: AppLocalization.of(context)!.firstName,
                  hintText: AppLocalization.of(context)!.firstName,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextField(
                controller: _surname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: AppLocalization.of(context)!.surname,
                  hintText: AppLocalization.of(context)!.surname,
                ),
              ),
            ),
            Container(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _bloc.add(ChangeNames(_firstName.text.trim(), _surname.text.trim()));
                  _bloc.add(FetchUser());
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalization.of(context)!.ok),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ColorPalette.appBarColor),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _postOfficeForm(context, state, UserBloc _bloc) {
    final TextEditingController _index = TextEditingController();
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: TextField(
                controller: _index,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: AppLocalization.of(context)!.postOffice,
                  hintText: AppLocalization.of(context)!.postOffice,
                ),
              ),
            ),
            Container(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _bloc.add(ChangeIndex(int.parse(_index.text.trim())));
                  _bloc.add(FetchUser());
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalization.of(context)!.ok),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ColorPalette.appBarColor),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _genderForm(context, user, UserBloc _bloc) {
    return Container(
      height: 170,
      child: Column(
        children: [
          const Icon(
            CupertinoIcons.minus,
            size: FontSize.bottomSheepMinusForm,
          ),
          ListTile(
            leading: Radio<Gender>(
              value: Gender.male,
              groupValue: _bloc.gender,
              onChanged: (Gender? value) {},
            ),
            title: Text(
              AppLocalization.of(context)!.male,
              style: const TextStyle(
                fontSize: FontSize.gendersNameFont,
              ),
            ),
            onTap: () {
              _bloc.add(ChangeGender('Male'));
              _bloc.add(FetchUser());
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Radio<Gender>(
              value: Gender.female,
              groupValue: _bloc.gender,
              onChanged: (Gender? value) {},
            ),
            title: Text(
              AppLocalization.of(context)!.female,
              style: const TextStyle(
                fontSize: FontSize.gendersNameFont,
              ),
            ),
            onTap: () {
              _bloc.add(ChangeGender('Female'));
              _bloc.add(FetchUser());
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
