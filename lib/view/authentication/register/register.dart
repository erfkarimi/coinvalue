import 'package:coinvalue/constant/constant.dart';
import 'package:coinvalue/widget/conf_pass_text_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../widget/big_button_widget.dart';
import '../../../widget/divider_widget.dart';
import '../../../widget/email_text_field_widget.dart';
import '../../../widget/google_button_widget.dart';
import '../../../widget/password_text_field_widget.dart';

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
              gap20,
              emailTextFieldWidget(),
              gap20,
              passwordTextFieldWidget(),
              gap20,
              confPassTextFieldWidget(),
              gap50,
              signUpButtonWidget(),
              gap20,
              dividerWidget(),
              gap20,
              googleButtonWidget()
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
        "Create a new account",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

    Widget emailTextFieldWidget(){
    return const EmailTextFieldWidget(
      hintText: "Email",
      prefixIcon: Icon(Icons.email),
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      );
  }

  Widget passwordTextFieldWidget(){
    return PasswordTextFieldWidget(
      hintText: "Password",
      prefixIcon: const Icon(Icons.key),
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscure: PasswordTextFieldWidget.passObscureStatus,
      iconButton: PasswordTextFieldWidget.passObscureStatus ?
        IconButton(
          onPressed: (){
            setState(() {
                  PasswordTextFieldWidget.passObscureStatus = !PasswordTextFieldWidget.passObscureStatus;
                });
          },
          icon: const Icon(Icons.visibility_off_outlined)
        ) : IconButton(
              onPressed: (){
                setState(() {
                  PasswordTextFieldWidget.passObscureStatus = !PasswordTextFieldWidget.passObscureStatus;
                }); 
              },
              icon: const Icon(Icons.visibility_outlined)),

    );
  }

  Widget confPassTextFieldWidget(){
    return ConfPassTextFieldWidget(
      hintText: "Confirm password",
      prefixIcon: const Icon(Icons.lock),
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscure: ConfPassTextFieldWidget.confPassObscureStatus,
      iconButton: ConfPassTextFieldWidget.confPassObscureStatus ?
        IconButton(
          onPressed: (){
            setState(() {
                  ConfPassTextFieldWidget.confPassObscureStatus = !ConfPassTextFieldWidget.confPassObscureStatus;
                });
          },
          icon: const Icon(Icons.visibility_off_outlined)
        ) : IconButton(
              onPressed: (){
                setState(() {
                  ConfPassTextFieldWidget.confPassObscureStatus = !ConfPassTextFieldWidget.confPassObscureStatus;
                }); 
              },
              icon: const Icon(Icons.visibility_outlined)),

    );
  }

  Widget signUpButtonWidget(){
    return BigButton(
      title: "Sign up",
      onPressed: (){}
      );
  }

   Widget dividerWidget(){
    return const DividerWidget();
  }

  Widget googleButtonWidget(){
    return GoogleButtonWidget(
      onPressed: (){},
      text: "Sign up with google"
      );
  }
}