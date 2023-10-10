import 'package:coinvalue/constant/constant.dart';
import 'package:coinvalue/widget/conf_pass_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view_model/text_field_validation/text_field_validation.dart';
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
  final TextEditingController passController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();

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

  Widget passwordTextFieldWidget(){
    final validationService = Provider.of<TextFieldValidation>(context);
    
    return PasswordTextFieldWidget(
      hintText: "Password",
      prefixIcon: const Icon(Icons.key),
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscure: PasswordTextFieldWidget.passObscureStatus,
      controller: passController,
      errorText: validationService.password.error,
      onChanged: (String value){
        validationService.changePassword(value);
        //validationService.equation();
        validationService.changeConfPass(confPassController.text);
      },
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
    final validationService = Provider.of<TextFieldValidation>(context);
    return ConfPassTextFieldWidget(
      hintText: "Confirm password",
      prefixIcon: const Icon(Icons.lock),
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscure: ConfPassTextFieldWidget.confPassObscureStatus,
      errorText: validationService.confirmPassword.error,
      controller: confPassController,
      onChanged: (String value){
        validationService.changeConfPass(value);
      },
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
    final validationService = Provider.of<TextFieldValidation>(context);
    return BigButton(
      title: "Sign up",
      onPressed: (!validationService.isValidForRegister) ? null : (){}
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