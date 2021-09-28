import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shop/app/pages/settings_page.dart';
import 'package:shop/app/widgets/account_button.dart';
import 'package:shop/app/widgets/app_logo.dart';
import 'package:shop/app/widgets/divider.dart';
import 'package:shop/core/navigator_service.dart';

void main() {
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
    },
  );
}
