import 'package:coinvalue/model/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class App extends GetMaterialApp{
  App({super.key}) : super(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: GoogleFonts.latoTextTheme(),
      primarySwatch: Palette.iris
    ),
    defaultTransition: Transition.leftToRight,
    routes: routes,
    initialRoute: "/splashScreen",
  );
}