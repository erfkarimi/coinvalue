import 'package:coinvalue/view/welcome/welcome.dart';
import 'package:flutter/material.dart';

import '../view/authentication/login/login.dart';
import '../view/authentication/register/register.dart';
import '../view/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  '/splashScreen': (_)=> const SplashScreen(),
  '/welcome'     : (_)=> const WelcomePage(),
  '/login'       : (_)=> const LoginPage(),
  'register'     : (_)=> const RegisterPage()

};