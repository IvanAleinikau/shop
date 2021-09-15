import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop/core/l10n/messages_all.dart';

class AppLocalization {

  static Future<AppLocalization> load(Locale locale) {
    final String name = locale.countryCode!.isEmpty
        ? locale.languageCode
        : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  String get email {
    return Intl.message(
      '',
      name: 'email',
    );
  }

  String get wrong {
    return Intl.message(
      '',
      name: 'wrong',
    );
  }

  String get search {
    return Intl.message(
      '',
      name: 'search',
    );
  }

  String get noResult {
    return Intl.message(
      '',
      name: 'no_result',
    );
  }

  String get pay {
    return Intl.message(
      '',
      name: 'pay',
    );
  }
  String get total {
    return Intl.message(
      '',
      name: 'total',
    );
  }

  String get doWant {
    return Intl.message(
      '',
      name: 'dowant',
    );
  }

  String get no {
    return Intl.message(
      '',
      name: 'no',
    );
  }

  String get yes {
    return Intl.message(
      '',
      name: 'yes',
    );
  }

  String get myData {
    return Intl.message(
      '',
      name: 'my_data',
    );
  }

  String get gender {
    return Intl.message(
      '',
      name: 'gender',
    );
  }

  String get postOffice {
    return Intl.message(
      '',
      name: 'post_office',
    );
  }

  String get firstName {
    return Intl.message(
      '',
      name: 'first_name',
    );
  }

  String get surname {
    return Intl.message(
      '',
      name: 'surname',
    );
  }

  String get ok {
    return Intl.message(
      '',
      name: 'ok',
    );
  }

  String get female {
    return Intl.message(
      '',
      name: 'female',
    );
  }

  String get male {
    return Intl.message(
      '',
      name: 'male',
    );
  }

  String get notVinyl {
    return Intl.message(
      '',
      name: 'not_vinyl',
    );
  }

  String get notNews {
    return Intl.message(
      '',
      name: 'notNews',
    );
  }

  String get notFqa {
    return Intl.message(
      '',
      name: 'notFqa',
    );
  }

  String get shop {
    return Intl.message(
      '',
      name: 'shop',
    );
  }

  String get home {
    return Intl.message(
      '',
      name: 'home',
    );
  }

  String get savedNews {
    return Intl.message(
      '',
      name: 'saved_news',
    );
  }

  String get settings {
    return Intl.message(
      '',
      name: 'settings',
    );
  }
  String get faq {
    return Intl.message(
      '',
      name: 'faq',
    );
  }
  String get logout {
    return Intl.message(
      '',
      name: 'logout',
    );
  }
  String get account {
    return Intl.message(
      '',
      name: 'account',
    );
  }

  String get changePassword {
    return Intl.message(
      '',
      name: 'change_password',
    );
  }
  String get newPassword {
    return Intl.message(
      '',
      name: 'new_password',
    );
  }
  String get enterNewPassword {
    return Intl.message(
      '',
      name: 'enter_new_password',
    );
  }
  String get confirmNewPassword {
    return Intl.message(
      '',
      name: 'confirm_new_password',
    );
  }
  String get cancel {
    return Intl.message(
      '',
      name: 'cancel',
    );
  }
  String get change {
    return Intl.message(
      '',
      name: 'change',
    );
  }

  String get changeLanguage {
    return Intl.message(
      '',
      name: 'change_a_language',
    );
  }

  String get chooseLanguage {
    return Intl.message(
      '',
      name: 'choose_language',
    );
  }

  String get news{
    return Intl.message(
      '',
      name: 'news',
    );
  }
  String get save{
    return Intl.message(
      '',
      name: 'save',
    );
  }
  String get remove{
    return Intl.message(
      '',
      name: 'remove',
    );
  }
  String get add{
    return Intl.message(
      '',
      name: 'add',
    );
  }
  String get  addNews{
    return Intl.message(
      '',
      name: 'add_news',
    );
  }
  String get  title{
    return Intl.message(
      '',
      name: 'title',
    );
  }
  String get  enterTitle{
    return Intl.message(
      '',
      name: 'enter_title',
    );
  }
  String get  text{
    return Intl.message(
      '',
      name: 'text',
    );
  }
  String get  enterText{
    return Intl.message(
      '',
      name: 'enter_text',
    );
  }
  String get  description{
    return Intl.message(
      '',
      name: 'description',
    );
  }
  String get  enterDescription{
    return Intl.message(
      '',
      name: 'enter_description',
    );
  }
  String get  addVinylRecord{
    return Intl.message(
      '',
      name: 'add_vinyl_record',
    );
  }
  String get  name{
    return Intl.message(
      '',
      name: 'name',
    );
  }
  String get  enterName{
    return Intl.message(
      '',
      name: 'enter_name',
    );
  }
  String get  author{
    return Intl.message(
      '',
      name: 'author',
    );
  }
  String get  enterAuthor{
    return Intl.message(
      '',
      name: 'enter_author',
    );
  }
  String get  year{
    return Intl.message(
      '',
      name: 'year',
    );
  }
  String get  enterYear{
    return Intl.message(
      '',
      name: 'enter_year',
    );
  }
  String get  cost{
    return Intl.message(
      '',
      name: 'cost',
    );
  }

  String get  enterCost{
    return Intl.message(
      '',
      name: 'enter_cost',
    );
  }
  String get  imageNumber{
    return Intl.message(
      '',
      name: 'image_number',
    );
  }
  String get  enterImage{
    return Intl.message(
      '',
      name: 'enter_image',
    );
  }

  String get  cart{
    return Intl.message(
      '',
      name: 'cart',
    );
  }
  String get  enterEmail{
    return Intl.message(
      '',
      name: 'enter_email',
    );
  }
  String get  password{
    return Intl.message(
      '',
      name: 'password',
    );
  }

  String get  enterPassword{
    return Intl.message(
      '',
      name: 'enter_password',
    );
  }

  String get  confirmPassword{
    return Intl.message(
      '',
      name: 'confirm_password',
    );
  }

  String get  singUp{
    return Intl.message(
      '',
      name: 'sing_up',
    );
  }

  String get  alreadyHave{
    return Intl.message(
      '',
      name: 'already_have',
    );
  }
  String get  logIn{
    return Intl.message(
      '',
      name: 'log_in',
    );
  }
  String get  haveAcc{
    return Intl.message(
      '',
      name: 'have_acc',
    );
  }
  String get  buy{
    return Intl.message(
      '',
      name: 'buy',
    );
  }

  String get  question{
    return Intl.message(
      '',
      name: 'question',
    );
  }

  String get  enterQuestion{
    return Intl.message(
      '',
      name: 'enter_question',
    );
  }

  String get answer {
    return Intl.message(
      '',
      name: 'answer',
    );
  }

  String get  enterAnswer{
    return Intl.message(
      '',
      name: 'enter_answer',
    );
  }

  String get  field{
    return Intl.message(
      '',
      name: 'field',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization>{
  final Locale overriddenLocale;

  const AppLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => ['en', 'ru'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}