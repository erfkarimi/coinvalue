import 'package:coinvalue/constant/constant.dart';
import 'package:coinvalue/view_model/login_validation/text_field_validation.dart';
import 'package:coinvalue/widget/big_button_widget.dart';
import 'package:coinvalue/widget/divider_widget.dart';
import 'package:coinvalue/widget/google_button_widget.dart';
import 'package:coinvalue/widget/email_text_field_widget.dart';
import 'package:coinvalue/widget/password_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController controller = TextEditingController();
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
      child: Padding(
        padding: p24,
        child: SingleChildScrollView(
          child: Column(
            children: [
              gap40,
              signInTextWidget(),
              gap20,
              emailTextFieldWidget(),
              gap20,
              passwordTextFieldWidget(),
              gap50,
              loginButtonWidget(),
              gap10,
              needHelpWidget(),
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

  Widget emailTextFieldWidget(){
    final validationService = Provider.of<LoginTextFieldValidation>(context);
    return EmailTextFieldWidget(
      hintText: "Email",
      prefixIcon: const Icon(Icons.email),
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      errorText: validationService.email.error,
      onChange: (String value)=> validationService.loginChangeEmail(value),
      );
  }

  Widget passwordTextFieldWidget(){
    final validationService = Provider.of<LoginTextFieldValidation>(context);
    return PasswordTextFieldWidget(
      hintText: "Password",
      prefixIcon: const Icon(Icons.key),
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscure: PasswordTextFieldWidget.passObscureStatus,
      errorText: validationService.password.error,
      controller: controller,
      onChanged: (String value)=> validationService.loginChangePassword(value),
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

  Widget needHelpWidget(){
    return TextButton(
      onPressed: (){
        Get.toNamed("/resetPassword");
      },
      child: const Text(
        "Need help ?",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
    );
  }

  Widget loginButtonWidget(){
    final validationService = Provider.of<LoginTextFieldValidation>(context);
    return BigButton(
      title: "Login",
      onPressed: (!validationService.loginIsValid) ? null : (){}
      );
  }

  Widget dividerWidget(){
    return const DividerWidget();
  }

  Widget googleButtonWidget(){
    return GoogleButtonWidget(
      onPressed: (){},
      text: "Continue with google"
      );
  }
}