import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRowColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work with row and column'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ColorBox(),
            BiColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BiColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}
