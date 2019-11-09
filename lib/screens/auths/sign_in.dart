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
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              TextFormField(
                onChanged: (val){
                },
              ),
              SizedBox(height: 30.0),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                },
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.blue[400],
                onPressed: () async {},
                child: Text(
                    'Sign In',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
