import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/core/models/user_model.dart';

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
                      return _namesForm(context, _bloc.user, _bloc);
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
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 0, 10),
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
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
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
                                return _postOfficeForm(context, user, _bloc);
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
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return _logout(context);
                              },
                            );
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

  Widget _logout(context) {
    return Dialog(
      backgroundColor: ColorPalette.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                AppLocalization.of(context)!.areYouSure,
                style: const TextStyle(
                  fontSize: FontSize.postOfficeIndexFont,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: Text(
                      AppLocalization.of(context)!.no,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(LogOutEvent());
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalization.of(context)!.yes,
                      style:
                          const TextStyle(color: ColorPalette.dismissibleColor),
                    ),
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return const Divider(
      color: ColorPalette.dividerColor,
      height: FontSize.dividerFont,
    );
  }

  Widget _namesForm(context, CustomUser user, UserBloc _bloc) {
    final TextEditingController _firstName = TextEditingController();
    final TextEditingController _surname = TextEditingController();
    return Dialog(
      backgroundColor: ColorPalette.backgroundColor,
      insetAnimationDuration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.account_circle_outlined),
                  hintText: user.firstName,
                  labelText: AppLocalization.of(context)!.firstName,
                ),
                controller: _firstName,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: ColorPalette.backgroundColor,
                  ),
                  hintText: user.surname,
                  labelText: AppLocalization.of(context)!.surname,
                ),
                controller: _surname,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: Text(AppLocalization.of(context)!.cancel),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    onPressed: () {
                      _bloc.add(ChangeNames(
                          _firstName.text.trim(), _surname.text.trim()));
                      _bloc.add(FetchUser());
                      Navigator.of(context).pop();
                      _message(context);
                    },
                    child: Text(AppLocalization.of(context)!.accept),
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _postOfficeForm(context, CustomUser user, UserBloc _bloc) {
    final TextEditingController _index = TextEditingController();
    return Dialog(
      backgroundColor: ColorPalette.backgroundColor,
      insetAnimationDuration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                AppLocalization.of(context)!.postOffice,
                style: const TextStyle(
                  fontSize: FontSize.postOfficeIndexFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(CupertinoIcons.number),
                  hintText: user.postOfficeIndex.toString(),
                  labelText: AppLocalization.of(context)!.postOffice,
                ),
                controller: _index,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: Text(AppLocalization.of(context)!.cancel),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 7),
                  child: TextButton(
                    onPressed: () {
                      _bloc.add(ChangeIndex(int.parse(_index.text.trim())));
                      _bloc.add(FetchUser());
                      Navigator.of(context).pop();
                      _message(context);
                    },
                    child: Text(AppLocalization.of(context)!.accept),
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
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
              _message(context);
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
              _message(context);
            },
          ),
        ],
      ),
    );
  }

  void _message(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(AppLocalization.of(context)!.successfully),
        backgroundColor: ColorPalette.savedNewsBarColor,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
