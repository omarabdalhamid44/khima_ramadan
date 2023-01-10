import 'package:shared_preferences/shared_preferences.dart';
class UserSharedPref{
  late final SharedPreferences _prefernces;
  static UserSharedPref _instance = UserSharedPref._internal();
  factory UserSharedPref(){
    return _instance;
  }

  Future<void> initalizationPrefernces() async{
    _prefernces = await SharedPreferences.getInstance();
  }
  UserSharedPref._internal(){
    initalizationPrefernces();
  }

  SharedPreferences get pref{
    return _prefernces;
  }


}