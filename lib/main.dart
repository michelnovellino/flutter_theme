import 'package:flutter/material.dart';
import 'package:flutter_theme/src/homePage.dart';
import 'package:flutter_theme/src/settingsPage.dart';

void main() => runApp(Run());

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Theme',
      initialRoute: HomePage.routeName,
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
