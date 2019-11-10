import 'package:base/services/auth.dart';
import 'package:base/shared/inputDesign.dart';
import 'package:base/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  final Function toggleview;
  SignIn({ this.toggleview});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading ? Load(): Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
        title: Text('Sign In'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: (){
                widget.toggleview();
              },
              icon: Icon(Icons.person),
              label: Text('SignUp'))
        ],
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0),
                  TextFormField(
                    decoration: inputDecor.copyWith(hintText: 'Email'),
                    validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                    onChanged: (val){
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 30.0),
                  TextFormField(
                    decoration: inputDecor.copyWith(hintText: 'Password'),
                    validator: (val) => val.length < 8 ? 'Password must be 8 characters long' : null,
                    obscureText: true,
                    onChanged: (val){
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 30.0),
                  RaisedButton(
                    color: Colors.blue[400],
                    onPressed: () async {
                      if (_formKey.currentState.validate()){
                        setState(() => loading = true);
                        dynamic result = await _auth.mailPassSignIn(email, password);
                        if (result == null){
                          setState(() {
                            error = 'Please Use a Valid email and password';
                            loading = false;
                          });
                        }
                      }
                    },
                    child: Text(
                        'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  ),
                  SizedBox(height: 90.0),
                  Text(
                    error,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
