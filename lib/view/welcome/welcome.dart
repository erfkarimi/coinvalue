import 'package:coinvalue/model/color/palette.dart';
import 'package:coinvalue/widget/big_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override 
  Widget build(context){
    setSystemUIStyle();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              imageWidget(),
              const SizedBox(height: 70),
              welcomeTextWidget(),
              Text(
                "Here you can check crypto prices",
                style: TextStyle(
                  fontSize: 17, color: Colors.grey.shade600)),
              const SizedBox(height: 40),
              loginButtonWidget(),
              const SizedBox(height: 14),
              registerButtonWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget imageWidget(){
    return Image.asset("asset/image/welcome.png", width: 280);
  }

  Widget welcomeTextWidget(){
    return const Text(
      "Hello !",
      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
    );
  }

  Widget loginButtonWidget(){
    return BigButton(
      title: "Login",
      onPressed: (){
        Get.toNamed("/login");
      }
      );
  }

  Widget registerButtonWidget(){
    return MaterialButton(
      onPressed: (){
        Get.toNamed("/register");
      },
      minWidth: double.infinity,
      height: 48,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Palette.iris, width: 2)
      ),
      child: Text(
        "Register",
        style: TextStyle(
          color: Palette.iris,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),
      ),
      );
  }

}

void setSystemUIStyle(){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white
      ) 
    );
  }