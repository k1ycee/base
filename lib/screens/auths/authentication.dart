import 'package:base/screens/auths/sign_in.dart';
import 'package:base/screens/auths/signup.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool showSignIn = true;

  void toggleview(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn){
      return SignIn(toggleview: toggleview);
    }
    else{
      return SignUp(toggleview: toggleview);
    }
  }
}
