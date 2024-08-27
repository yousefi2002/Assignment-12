import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main() {
  runApp(SpinKitPage());
}


class SpinKitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text('SpinKit Loading'),
      ),
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.orange,
          size: 50,
        ),
      ),
    );
  }
}