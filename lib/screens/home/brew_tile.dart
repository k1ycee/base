import 'package:flutter/material.dart';
import 'package:base/models/brew.dart';

class BrewTile extends StatelessWidget {

  final Brew brew;
  BrewTile({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(30.0, 6.0, 30.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.brown[brew.strength],
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugar(s)'),
        ),
      ),
    );
  }
}


