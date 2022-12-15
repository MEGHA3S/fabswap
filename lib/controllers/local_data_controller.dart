
import 'package:shared_preferences/shared_preferences.dart';

void storeLocalEmail(String email)async{
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
}



void storeLocalId(String id)async{
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('id', id);
}
