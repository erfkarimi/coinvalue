import 'package:coinvalue/constant/constant.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override 
  RegisterPageState createState()=> RegisterPageState();
}

class RegisterPageState extends State<RegisterPage>{
  @override 
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
    );
  }

  Widget buildBody(){
    return SizedBox.expand(
      child: Padding(
        padding: p24,
        child: SingleChildScrollView(
          child: Column(
            children: [
              gap40,
              signUpTextWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget signUpTextWidget(){
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Sign up to create account",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}