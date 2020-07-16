import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PersonWidget(),
    );
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my test App'),
      ),
      body: Container(
        child: _buidMainColunm(),
      ),
    );
  }

  Widget _buidMainColunm() => ListView(
    children: <Widget>[
      Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              _buildTopImage(),
              Container(
                margin: const EdgeInsets.all(5),
                child: _buildRating(),
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: _buildAction(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: _buildDesc(),
              )
            ],
          ),
        ),
      ),
    ],
  );

  Widget _buildTopImage() => Container(
    child: Card(
      elevation: 5,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Image.asset(
        'assets/images/img_app.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );

  Widget _buildRating() => ListTile(
    title: Text(
      'Wolf',
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Text('green forest!'),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[FavoriteWidget()],
    ),
  );

  Widget _buildAction() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildButton('attack', Icons.star, Colors.black),
      _buildButton('power - 100', Icons.arrow_forward, Colors.black),
      _buildButton('defense - 50', Icons.security, Colors.black),
    ],
  );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
    children: <Widget>[
      Icon(icon, color: Colors.black),
      Container(
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w400, color: color),
        ),
      ),
    ],
  );
  Widget _buildDesc() => Text('Wolfs are very powerful animals!',
      softWrap: true, style: TextStyle(fontSize: 16));
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 456;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isFavorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}