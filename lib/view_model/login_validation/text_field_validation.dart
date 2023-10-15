import 'package:coinvalue/model/validation/text_field_model.dart';
import 'package:flutter/material.dart';

class LoginTextFieldValidation with ChangeNotifier{

  TextFieldModel _email = TextFieldModel(null, null);
  TextFieldModel _password = TextFieldModel(null, null);


  // Getters
  TextFieldModel get email => _email;
  TextFieldModel get password => _password;

  bool get loginIsValid{
    if(_email.value != null &&
      _password.value != null
      ){
    return true;
    } else {
    return false;
    }
  }

  bool get resetPassIsValid{
    if(_email.value != null){
    return true;
    } else {
    return false;
    }
  }


  // Setters
  void loginChangeEmail(String value){
    final bool emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
    if(emailValid){
      _email = TextFieldModel(value, null);
    } else {
        _email = TextFieldModel(null, "Email is invalid");
    }
    notifyListeners();
  }

  void loginChangePassword(String value){
    if(value.length >= 8){
      if(value.contains(RegExp(r'[A-Z]'))){
        _password = TextFieldModel(value, null);
      } else {
        _password = TextFieldModel(null, "Password must contains an upper case letter");
      }
    } else {
        _password = TextFieldModel(null, "Password must be at least 8 characters");
    }
    notifyListeners();
  }
}