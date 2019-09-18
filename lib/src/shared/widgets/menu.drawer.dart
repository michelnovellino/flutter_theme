import 'package:flutter/material.dart';
import 'package:flutter_theme/src/pages/homePage.dart';
import 'package:flutter_theme/src/pages/settingsPage.dart';

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _renderDrawer(context),
    );
  }

  ListView _renderDrawer(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/img/menu-img.jpg'))),
        ),
        ListTile(
          leading: Icon(
            Icons.pages,
            color: Colors.blue,
          ),
          title: Text('Pages'),
          onTap: () {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.format_align_center,
            color: Colors.blue,
          ),
          title: Text('Forms'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          title: Text('Settigs'),
          onTap: () {
            Navigator.pushReplacementNamed(context, SettingsPage.routeName);
          },
        )
      ],
    );
  }
}
