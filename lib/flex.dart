import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work with row and column'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 50,
              color: Colors.green,
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                softWrap: false,
                //overflow: TextOverflow.fade,
                overflow:  TextOverflow.fade,
              ),
            ),

            Icon(
              Icons.favorite,
              size: 50,
            ),
            /*BiColorBox(),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: ColorBox(),
            ),
            //SizedBox(width: 50),
            //Spacer(flex: 1),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: ColorBox(),
            ),*/
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
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}
