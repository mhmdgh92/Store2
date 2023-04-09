import 'package:country_picker/country_picker.dart';

class MyUser {
  late String user_id;
  late String first_name;
  late String last_name;
  late String user_avatar;
  late String user_email;
  late String mobile;
  late String user_role;

  MyUser({required this.user_id,required this.first_name,
    required this.last_name,required this.user_avatar,
    required this.user_email,required this.mobile,
    required this.user_role});

  MyUser.Default() {
    this.user_id = '';
    this.first_name = '';
    this.last_name = '';
    this.user_avatar =''; 
    this.user_email = '';
    this.mobile = '';
    this.user_role = '';
  }
}
