import 'package:flutter/material.dart';
import 'package:flutter_theme/src/settingsPage.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _renderDrawer(context),
        appBar: AppBar(title: Text('HomePage')),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Secondary color: '),
              Divider(),
              Text('Gender:'),
              Divider(),
              Text('Username: '),
              Divider()
            ],
          ),
        ));
  }

  Drawer _renderDrawer(BuildContext context) {
    return Drawer(
      child: _createDrawer(context),
    );
  }

  ListView _createDrawer(BuildContext context) {
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
          onTap: () {},
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
