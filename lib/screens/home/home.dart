import 'package:base/models/brew.dart';
import 'package:base/screens/home/brew_lit.dart';
import 'package:base/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:base/services/database.dart';

class Home extends StatelessWidget {

  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseServices().brew,
      child: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Success'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('logout')
            ),
          ],
        ),
        body: BrewList(),
      )
    );
  }
}
