import 'package:shared_preferences/shared_preferences.dart';

removeAllValuesPreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}
