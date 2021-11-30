import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shop/app/pages/control_page.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/theme/theme_provider.dart';
import 'package:shop/app/widgets/account_button.dart';
import 'package:shop/app/widgets/app_logo.dart';
import 'package:shop/app/widgets/auth/auth_button.dart';
import 'package:shop/app/widgets/auth/auth_input.dart';
import 'package:shop/app/widgets/auth/auth_text_button.dart';
import 'package:shop/app/widgets/content/content_message.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/app/widgets/fqa_page/dismissible_card.dart';
import 'package:shop/app/widgets/fqa_page/dismissible_element.dart';
import 'package:shop/app/widgets/horizontal_line.dart';
import 'package:shop/app/widgets/text_container.dart';
import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/core/navigator_service.dart';

void main() {
  mainGolden();
}

void mainGolden() {
  group(
    'GoldenBuilder',
    () {
      testGoldens('Settings button', (tester) async {
        final widget = ButtonListTile(
          title: 'Settings',
          icon: Icons.settings,
          page: Pages.settings,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('Settings', widget)
          ..addTextScaleScenario('Settings', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'button_in_account_page');
      });

      testGoldens('App logo', (tester) async {
        final widget = AppLogo();
        final builder = GoldenBuilder.column()..addScenario('Logo', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'app_logo');
      });

      testGoldens('Divider', (tester) async {
        final widget = CustomDivider();
        final builder = GoldenBuilder.column()..addScenario('Divider', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'divider');
      });

      testGoldens('ContentMessage', (tester) async {
        final widget = ContentMessage(
          text: 'Something',
          textStyle: ThemeProvider.getTheme().textTheme.headline3,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('ContentMessage', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'content_message');
      });

      testGoldens('Line', (tester) async {
        final widget = Line();
        final builder = GoldenBuilder.column()..addScenario('Line', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'line');
      });

      testGoldens('TextContainer', (tester) async {
        final widget = TextContainer(
          text: 'Something',
          style: TextStyle(),
          padding: EdgeInsets.zero,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('TextContainer', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'text_container');
      });

      testGoldens('DismissibleCard', (tester) async {
        final element = QuestionAnswer(answer: '', question: '', id: 1);
        final widget = DismissibleCard(index: 1, element: element);
        final builder = GoldenBuilder.column()
          ..addScenario('DismissibleCard', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'dismissible_card');
      });

      testGoldens('DissmissibleElement', (tester) async {
        final element = QuestionAnswer(answer: '', question: '', id: 1);
        final widget = DissmissibleElement(index: 1, element: element);
        final builder = GoldenBuilder.column()
          ..addScenario('DissmissibleElement', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'dissmissible_element');
      });

      testGoldens('AuthInput', (tester) async {
        final TextEditingController _email = TextEditingController();
        final widget = AuthInput(
          controller: _email,
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          obscure: true,
          labelText: '',
          hintText: '',
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthInput', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_input');
      });

      testGoldens('AuthButton', (tester) async {
        final widget = AuthButton(
          text: '',
          onPressed: () => null,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_button');
      });

      testGoldens('ContentPage', (tester) async {
        final widget = ContentMessage(
          text: 'Something',
          textStyle: ThemeProvider.getTheme().textTheme.headline3,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('ContentPage', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'content_page');
      });

      testGoldens('AuthTextButton', (tester) async {
        final widget = AuthTextButton(
          padding: const EdgeInsets.only(bottom: 15),
          textStyle: const TextStyle(fontSize: 15),
          onPressed: () => null,
          text: '',
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthTextButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_text_button');
      });

      // testGoldens('ControlPage', (tester) async {
      //   final widget = SizedBox(
      //     width: 700,
      //     height: 546,
      //     child: ControlPage(),
      //   );
      //   final builder = GoldenBuilder.column()
      //     ..addScenario('ControlPage', widget);
      //   await tester.pumpWidgetBuilder(builder.build());
      //   await screenMatchesGolden(tester, 'control_page');
      // });

      // testGoldens('SettingsPage', (tester) async {
      //   final widget = SizedBox(
      //     width: 700,
      //     height: 546,
      //     child: SettingsPage(),
      //   );
      //   final builder = GoldenBuilder.column()
      //     ..addScenario('SettingsPage', widget);
      //   await tester.pumpWidgetBuilder(builder.build());
      //   await screenMatchesGolden(tester, 'settings_page');
      // });

      // testGoldens('VinylCard', (tester) async {
      //   final widget = VinylCard(
      //     vinylRecord: VinylRecord(
      //       name: 'name',
      //       author: 'author',
      //       year: '2000',
      //       description: 'description',
      //       cost: '1000',
      //       image: '',
      //     ),
      //   );
      //   final builder = GoldenBuilder.column()
      //     ..addScenario('VinylCard', widget);
      //   await tester.pumpWidgetBuilder(builder.build());
      //   await screenMatchesGolden(tester, 'vinyl_card');
      // });

      // testGoldens('NewsCard', (tester) async {
      //   final element = News(
      //     title: 'title',
      //     text: 'text',
      //     url:
      //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlNTSPlzlKB5_DY0P8hiuDJLP4m21S-LY9rSpyfv309PdQ42IqYtfvR_ylZHW_uXFGJuI&usqp=CAU',
      //     date: DateTime.now(),
      //   );
      //   final widget = NewsCard(
      //     news: element,
      //   );
      //   final builder = GoldenBuilder.column()..addScenario('NewsCard', widget);
      //   await tester.pumpWidgetBuilder(builder.build());
      //   await screenMatchesGolden(tester, 'news_card');
      // });
    },
  );
}
