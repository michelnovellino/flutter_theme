import 'package:flutter/material.dart';
import 'package:flutter_theme/src/shared/preferences/preferences.dart';
import 'package:flutter_theme/src/shared/widgets/menu.drawer.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "home";
  final preferences = new Preferences();

  @override
  Widget build(BuildContext context) {
    preferences.lastPage = HomePage.routeName;

    return Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          title: Text('HomePage'),
          backgroundColor:
              (preferences.secondaryColor) ? Colors.teal : Colors.blue,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Secondary color: ${preferences.secondaryColor}'),
              Divider(),
              Text('Gender:${preferences.gender}'),
              Divider(),
              Text('Username: ${preferences.name}'),
              Divider()
            ],
          ),
        ));
  }
}
