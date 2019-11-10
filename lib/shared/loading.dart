import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 90.0,
        ),
      ),
    );
  }
}
