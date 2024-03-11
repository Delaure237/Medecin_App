// ignore_for_file: file_names

import'package:untitled15/Pages/screens/Log_In.dart';
import 'package:untitled15/Pages/screens/Register.dart';

import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget{
  const Authenticate({super.key});

  @override
  AuthenticateState createState() => AuthenticateState();
}
class AuthenticateState extends State<Authenticate>{
  bool showSignIn = true;
  void toogleView() {
    setState(() => showSignIn =! showSignIn);
  }
  @override
  Widget build(BuildContext context){
    if(showSignIn){
      return LogInPage(toggleView: toogleView);
    }else{
      return RegisterPage(toggleView: toogleView );
    }

  }
}