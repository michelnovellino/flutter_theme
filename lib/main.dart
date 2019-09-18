import 'package:flutter/material.dart';
import 'package:flutter_theme/src/pages/homePage.dart';
import 'package:flutter_theme/src/pages/settingsPage.dart';
import 'package:flutter_theme/src/shared/preferences/preferences.dart';

void main() async {
  final preferences = new Preferences();
  await preferences.initPrefs();

  runApp(Run());
}

class Run extends StatelessWidget {
    final preferences = new Preferences();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Theme',
      initialRoute: preferences.lastPage,
      routes: {
        HomePage.routeName: (BuildContext context) {
          return HomePage();
        },
        SettingsPage.routeName: (BuildContext context) {
          return SettingsPage();
        }
      },
    );
  }
}
