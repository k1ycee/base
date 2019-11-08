import 'package:base/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthServices anon = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
        title: Text('Sign In'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign In',
          style: TextStyle(
            color: Colors.blue,
          ) ,
          ),
          onPressed: () async {
        dynamic result = await anon.signAnon();
        if (result == null){
          print('Sign in Failed');
        }
        else{
          print('Signed In');
          print(result.uid);
        }
          },
        ),
      ),
    );
  }
}
