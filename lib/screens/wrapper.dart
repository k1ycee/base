import 'package:base/screens/auths/authentication.dart';
import 'package:base/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:base/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null){
      return Auth();
    }
    else{
      return Home();
    }
  }
}
