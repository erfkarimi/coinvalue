import 'package:coinvalue/model/validation/text_field_model.dart';
import 'package:coinvalue/widget/conf_pass_text_field_widget.dart';
import 'package:flutter/material.dart';

class RegisterTextFieldValidation with ChangeNotifier{

  TextFieldModel _email = TextFieldModel(null, null);
  TextFieldModel _password = TextFieldModel(null, null);
  TextFieldModel _confirmPassword = TextFieldModel(null, null);


  // Getters
  TextFieldModel get email => _email;
  TextFieldModel get password => _password;
  TextFieldModel get confirmPassword => _confirmPassword;

  bool get registerIsValid{
    if(_email.value != null &&
      _password.value != null &&
      _confirmPassword.value != null &&
      _password.value == _confirmPassword.value
      ){
    return true;
    } else {
    return false;
    }
  }


  // Setters
  void registerChangeEmail(String value){
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

  void registerChangePassword(String value){
    if(value.length >= 8){
      if(value.contains(RegExp(r'[A-Z]'))){
        _password = TextFieldModel(value, null);
        ConfPassTextFieldWidget.enabled = true;
      } else {
        _password = TextFieldModel(null, "Password must contains an upper case letter");
      }
    } else {
        _password = TextFieldModel(null, "Password must be at least 8 characters");
        ConfPassTextFieldWidget.enabled = false;
    }
    notifyListeners();
  }

  void registerChangeConfPass(String value){
    if(ConfPassTextFieldWidget.enabled == true && value != password.value 
      && value != ''){
        _confirmPassword = TextFieldModel(null, "Dose not match with password");
    } else {
      _confirmPassword = TextFieldModel(value, null);
    }
    notifyListeners();
  }
}