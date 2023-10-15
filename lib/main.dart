import 'package:coinvalue/view_model/login_validation/text_field_validation.dart';
import 'package:coinvalue/view_model/register_validation/text_field_validation.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (_)=> LoginTextFieldValidation()),
      ChangeNotifierProvider(
      create: (_)=> RegisterTextFieldValidation()),
    ],
    child: App(),
    )
    
    );
}