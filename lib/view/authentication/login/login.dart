import 'package:coinvalue/widget/big_button_widget.dart';
import 'package:coinvalue/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(context) {
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

  Widget buildBody() {
    return SizedBox.expand(
      child: Column(
        children: [
          const SizedBox(height: 40),
          signInTextWidget(),
          const SizedBox(height: 30),
          emailTextField(),
          const SizedBox(height: 20),
          passwordTextField(),
          const SizedBox(height: 50),
          loginButtonWidget(),
          const SizedBox(height: 40),
          dividerWidget(),
          const SizedBox(height: 20),
          googleButtonWidget()
        ],
      ),
    ).paddingAll(24);
  }

  Widget signInTextWidget(){
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Sign in to continue",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget emailTextField(){
    return TextFieldWidget(
      hintText: "Email",
      prefixIcon: const Icon(Icons.email)
      );
  }

  Widget passwordTextField(){
    return TextFieldWidget(
      hintText: "Password",
      prefixIcon: const Icon(Icons.key)
    );
  }

  Widget loginButtonWidget(){
    return BigButton(
      title: "Login",
      onPressed: (){}
      );
  }

  Widget dividerWidget(){
    return const Row(
      children: [
        Expanded(
          child: Divider(
            indent: 40,
            endIndent: 10,
          ),
        ),
        Text(
          "or",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          )),
        Expanded(
          child: Divider(
            indent: 10,
            endIndent: 40,
          ),
        )
      ],
    );
  }

  Widget googleButtonWidget(){
    return MaterialButton(
      onPressed: (){},
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          width: 2.0
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/image/google_icon.png",
            width: 24,),
          const SizedBox(width: 10),
          Container(
            width: 2.0,
            height: 20,
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          const Text(
            "Sign in with google",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),)
        ],
      )
    );
  }
}
