import 'package:base/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: 300.0,
              width: 400.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Pheew you have come a long way',textAlign: TextAlign.center,),
                  SizedBox(height: 30.0),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: (){},
                    child: Text('Contents',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
