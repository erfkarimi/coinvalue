import 'package:coinvalue/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/big_button_widget.dart';
import '../../../../widget/email_text_field_widget.dart';

class ResetPassword extends StatelessWidget{
  const ResetPassword({super.key});

  @override 
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildBody()
    );
  }

  AppBar buildAppBar(){
    return AppBar();
  }

  Widget buildBody(){
    return Column(
      children: [
        gap40,
        resetPasswordTextWidget(),
        gap20,
        emailTextFieldWidget(),
        gap50,
        submitButtonWidget()

      ],
    ).paddingAll(24);
  }

  Widget resetPasswordTextWidget(){
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Reset password",
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

  Widget submitButtonWidget(){
    return BigButton(
      title: "Submit",
      onPressed: (){}
      );
  }

}