import 'package:flutter/material.dart';
import 'package:flutter_theme/src/shared/preferences/preferences.dart';
import 'package:flutter_theme/src/shared/widgets/menu.drawer.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = "settings";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor;
  int _gender;
  String _name;
  TextEditingController _nameCtrl;
  final preferences = new Preferences();
  @override
  void initState() {
    super.initState();
    preferences.lastPage = SettingsPage.routeName;
    _nameCtrl = TextEditingController(text: _name);
    _secondaryColor = preferences.secondaryColor;
    _gender = preferences.gender;
    _name = preferences.name;
  }

  _setRadioValue(value) {
    preferences.gender = value;

    setState(() {
      _gender = value;
    });
  }

  _setSwitchValue(value) {
    preferences.secondaryColor = value;

    setState(() {
      _secondaryColor = value;
    });
  }

  _setInputValue(value) {
    preferences.name = value;

    setState(() {
      _name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          title: Text('SettingsPage'),
          backgroundColor:
              (preferences.secondaryColor) ? Colors.teal : Colors.blue,
        ),
        body: _renderSettings());
  }

  ListView _renderSettings() {
    return ListView(
      children: <Widget>[
        _createTitle('SETTINGS'),
        Divider(),
        _createSwitch('Secondary color'),
        Divider(),
        _createRadio('Male', 1),
        _createRadio('Female', 2),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: _renderInput(
                'Nombre', 'Nombre de la persona manejando el teléfono'))
      ],
    );
  }

  //functions

  //widgets
  Container _createTitle(String title) {
    return Container(
      padding: EdgeInsets.all(7.0),
      child: Text(title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }

  SwitchListTile _createSwitch(String title) {
    return SwitchListTile(
      value: _secondaryColor,
      title: Text(title),
      onChanged: _setSwitchValue,
    );
  }

  RadioListTile _createRadio(
    String title,
    int value,
  ) {
    return RadioListTile(
      value: value,
      groupValue: _gender,
      title: Text(title),
      onChanged: _setRadioValue,
    );
  }

  TextField _renderInput(String label, String helperText) {
    return TextField(
      controller: _nameCtrl,
      decoration: InputDecoration(labelText: label, helperText: helperText),
      onChanged: _setInputValue,
    );
  }
}
