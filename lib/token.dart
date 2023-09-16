import 'package:shared_preferences/shared_preferences.dart';

Future<String> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? t= prefs.getString('token')?? '';
  print(t);
  return t;
}
Future<void> deleteAuthToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    prefs.clear();
  } catch (e) {
    print('Error clearing SharedPreferences: $e');
    prefs.clear();
  }
}