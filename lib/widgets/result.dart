import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String msg = '';
    if (count >= 0 && count <= 1) {
      msg = 'так себе!';
    } else if (count >= 2 && count <= 3) {
      msg = 'Не плохо!';
    } else {
      msg = 'отлично!';
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          )
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: <Color>[
          Color(0xFF5337ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ]),
      ),
      child: Column(
        children: <Widget>[
          Container(),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text('true answers - $count from $total'),
          Divider(
            color: Colors.white,
          ),

          FlatButton(
            child: Text('one more time', style: TextStyle(fontSize: 20, color: Colors.black),),
            onPressed: onClearState,
          )
        ],
      ),
    );
  }
}
