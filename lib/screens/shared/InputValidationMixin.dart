import 'enums.dart';

bool isPasswordValid(String password) => password.length >= 6;
bool isEmailValid(String email){
  if(email.isEmpty)
    return false;
  RegExp regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  return regex.hasMatch(email);
}

String? Validtion(String txt,ValidationType validationType){
  String result ='';
  switch(validationType) {
    case ValidationType.Email: {
      if(!isEmailValid(txt))
        return 'يرجى ادخال بريد الكتروني صحيح';
      else
        return null;
    }
    case ValidationType.Password: {
      if(!isPasswordValid(txt))
        return 'يرجى ادخال 6 حروف او ارقام على الاقل';
      else
        return null;
    }
    default: {
      //statements;
    }
    break;
  }

  return result;
}