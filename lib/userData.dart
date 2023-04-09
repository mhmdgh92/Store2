import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;
  static UserO? user;

  static const _keyUsername = 'username';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
    user = UserO.Default();
  }

  static Future setUserObj(Map<String, dynamic> json) async {
    if(user==null)
      user = UserO.Default();
    try {
      user?.first_name = json['first_name'];
    } catch (e) {
      print(e);
    }
  }

  static UserO? getUserObj() {
    try {
      return user;
    } catch (e) {
      print(e);
    }
  }
}

class UserO {
  late String first_name;

  UserO(String first_name) {
    this.first_name = first_name;
  }

  UserO.Default() {
    this.first_name = 'first_name Sample';
  }
}
