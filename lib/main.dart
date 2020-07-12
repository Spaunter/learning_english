import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main() => runApp(ScreenWidget());


class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My app header'),
        ),
        body: SimpleWidget(),
      )
    );
  }
}

class SimpleWidget extends StatefulWidget{
  @override
  _SimpleWidgetState createState()=> new _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget>{
  int _count = 0;

  void _handleButton(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 300,
      width: 300,
      alignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_count'),
            RaisedButton(
              onPressed: (){_handleButton();},
              child: Text('Click me'),
            )
          ],
        ),
      ),
    );
  }
}