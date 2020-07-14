import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//import 'test_file.dart';
//import 'row_coloum.dart';
import 'myContainer.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English_Quiz!',
      theme: ThemeData(primaryColor: Colors.amber),
      home: MyContainerClass(),
    );
  }
}
