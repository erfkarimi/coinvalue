import 'package:coinvalue/model/validation/text_field_model.dart';
import 'package:coinvalue/widget/conf_pass_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldValidation with ChangeNotifier{

  TextFieldModel _email = TextFieldModel(null, null);
  TextFieldModel _password = TextFieldModel(null, null);
  TextFieldModel _confirmPassword = TextFieldModel(null, null);


  // Getters
  TextFieldModel get email => _email;
  TextFieldModel get password => _password;
  TextFieldModel get confirmPassword => _confirmPassword;

  bool get isValidForRegister{
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

  bool get isValidForLogin{
    if(_email.value != null &&
      _password.value != null
      ){
    return true;
    } else {
      return false;
    }
  }

  bool get isValidForResetPassword{
    if(_email.value != null){
    return true;
    } else {
      return false;
    }
  }

  // Setters
  void changeEmail(String value){
    if(value.contains("@")){
      _email = TextFieldModel(value, null);
    } else {
        _email = TextFieldModel(null, "Email is invalid");
    }
    notifyListeners();
  }

  void changePassword(String value){
    if(value.length >= 8){
      _password = TextFieldModel(value, null);
      ConfPassTextFieldWidget.enabled = true;
    } else {
        _password = TextFieldModel(null, "Password must be at least 8 characters");
        ConfPassTextFieldWidget.enabled = false;
    }
    notifyListeners();
  }

  void changeConfPass(String value){
    if(ConfPassTextFieldWidget.enabled == true && value != password.value 
      && value != ''){
        _confirmPassword = TextFieldModel(null, "Dose not match with password");
    } else {
      _confirmPassword = TextFieldModel(value, null);
    }
    notifyListeners();
  }

  void equation(){
    if(password.value != confirmPassword.value){
      _confirmPassword.error =  "Dose not match with password";
    } else {
      _confirmPassword.error = null;
    }
    notifyListeners();
  }
}