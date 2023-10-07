import 'package:flutter/material.dart';
import '../view/authentication/login/login.dart';
import '../view/authentication/login/reset_password/reset_password.dart';
import '../view/authentication/register/register.dart';
import '../view/splash_screen/splash_screen.dart';
import '../view/welcome/welcome.dart';

Map<String, WidgetBuilder> routes = {
  '/splashScreen': (_)=> const SplashScreen(),
  '/welcome'     : (_)=> const WelcomePage(),
  '/login'       : (_)=> const LoginPage(),
  '/register'     : (_)=> const RegisterPage(),
  '/resetPassword': (_)=> const ResetPassword()

};