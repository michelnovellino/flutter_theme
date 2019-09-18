import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _preferences = new Preferences._();

  factory Preferences() {
    return _preferences;
  }

  Preferences._();
  SharedPreferences _prefs;

  // bool secondaryColor
  // int gender
  // String name

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // getters
  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  get secondaryColor {
    return _prefs.getBool('secondaryColor') ?? false;
  }

  get name {
    return _prefs.getString('name') ?? 'username';
  }

  get lastPage {
    return _prefs.getString('lastPage') ?? 'home';
  }

  //setters
  set gender(int value) {
    _prefs.setInt('gender', value);
  }

  set secondaryColor(bool value) {
    _prefs.setBool('secondaryColor', value);
  }

  set name(String value) {
    _prefs.setString('name', value);
  }

  set lastPage(String value) {
    _prefs.setString('lastPage', value);
  }
}
