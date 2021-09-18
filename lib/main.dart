import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_bloc.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/get_it.dart';
import 'package:shop/core/splash.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/localization/app_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SetupGetIt.setup();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final AppLocalizationDelegate _localeOverrideDelegate = const AppLocalizationDelegate(Locale('en', 'US'));
  late SplashBloc splashBloc;

  @override
  void initState() {
    super.initState();
    splashBloc = SplashBloc();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(splashBloc),
        ),
        BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(splashBloc),
        ),
        BlocProvider<SplashBloc>(
          create: (context) => splashBloc..add(CheckCurrentUser()),
        ),
        BlocProvider<UserBloc>(
          create: (context) => UserBloc()..add(FetchUser()),
        )
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          _localeOverrideDelegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('ru', 'RUS'),
        ],
        home: Splash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
