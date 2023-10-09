import 'package:coinvalue/view_model/text_field_validation/text_field_validation.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_)=> TextFieldValidation(),
      child: App())
    );
}