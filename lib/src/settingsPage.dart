import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static final String routeName = "settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Text('settings: '),
          Divider(),
          Text('SETTINGS PAGE:'),

          Divider()
        ],),
      )
    );
  }
}
