import 'package:flutter/material.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState()=>_HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Text('My test'),
      ),
    );
  }
}