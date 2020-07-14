import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container_theory!'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                    'https://lh3.googleusercontent.com/proxy/13_Prjn71Alc2JTHYcBsLa0H2Adk9oPO1KCchR3uaBGmz1B2OQhGtnfCRSgTk5qaal8K9OHNkw8hiB8')
                .image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30)
        ),
      ),
      /*Container(
        color: Colors.amber[300],
        child: Text('Second Text', textAlign: TextAlign.center,),
        width: double.infinity,
        height: 200,
        //alignment: Alignment.center,
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.symmetric(horizontal: 20),
      ),*/
      /*Center(
        child: Container(
          alignment: Alignment.center,
          //width: 300,
          //height: 300,
          //margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          /*margin: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 100
          ),*/
          margin: const EdgeInsets.only(left: 50),
          padding: const EdgeInsets.all(0.0),
          decoration: BoxDecoration(
              //shape: BoxShape.circle,
              border: Border.all(),
              color: Colors.amber[600]),
          child: Text('MyText'),
        ),
      ),*/
    );
  }
}
