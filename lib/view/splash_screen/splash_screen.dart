import 'package:coinvalue/model/color/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override 
  SplashScreenState createState()=> SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
  @override 
  void initState() {
    super.initState();
    pageNavigation();
    setSystemUIStyle();
  }

  @override 
  Widget build(context){
    return buildBody();
  }

  Widget buildBody(){
    return Material(
      color: Palette.iris,
      child: const Center(
        child: Text(
          "Coinvalue",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 34
          ),
        ),
      ),
    );
  }

  void pageNavigation(){
    Timer(const Duration(seconds: 3),
      (){
        Get.offNamed("/welcome");
    });
  }
}

void setSystemUIStyle(){
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Palette.iris
      ) 
    );
  }