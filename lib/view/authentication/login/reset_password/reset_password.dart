import 'package:coinvalue/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../view_model/text_field_validation/text_field_validation.dart';
import '../../../../widget/big_button_widget.dart';
import '../../../../widget/email_text_field_widget.dart';

class ResetPassword extends StatelessWidget{
  const ResetPassword({super.key});

  @override 
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildBody(context)
    );
  }

  AppBar buildAppBar(){
    return AppBar();
  }

  Widget buildBody(context){
    return Column(
      children: [
        gap40,
        resetPasswordTextWidget(),
        gap20,
        emailTextFieldWidget(context),
        gap50,
        submitButtonWidget(context)

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

  Widget emailTextFieldWidget(context){
    final validationService = Provider.of<TextFieldValidation>(context);
    return EmailTextFieldWidget(
      hintText: "Email",
      prefixIcon: const Icon(Icons.email),
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      errorText: validationService.email.error,
      onChange: (String value)=> validationService.changeEmail(value),
      );
  }

  Widget submitButtonWidget(context){
    final validationService = Provider.of<TextFieldValidation>(context);
    return BigButton(
      title: "Submit",
      onPressed: (!validationService.isValidForResetPassword) ? null : (){}
      );
  }

}