import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_bloc.dart';
import 'package:shop/core/bloc/bloc_shopping_cart/shopping_cart_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_bloc.dart';
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
        BlocProvider<SavedNewsBloc>(
          create: (context) => SavedNewsBloc(),
        ),
        BlocProvider<FqaBloc>(
          create: (context) => FqaBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(splashBloc),
        ),
        BlocProvider<SettingBloc>(
          create: (context) => SettingBloc(),
        ),
        BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(splashBloc),
        ),
        BlocProvider<NewsBloc>(
          create: (context) => NewsBloc(),
        ),
        BlocProvider<VinylRecordBloc>(
          create: (context) => VinylRecordBloc(),
        ),
        BlocProvider<ShoppingCartBloc>(
          create: (context) => ShoppingCartBloc(),
        ),
        BlocProvider<SplashBloc>(
          create: (context) => splashBloc..add(CheckCurrentUser()),
        ),
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
