import 'package:flutter/material.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: UITikTok(),
        ),
        bottomNavigationBar: _bottomNavigator(),
      ),
    );
  }

  Widget _bottomNavigator() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/inicio.png'),
          ),
          title: Text(
            'Inicio',
            style: TextStyle(fontSize: 10.0),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/tendencias.png'),
          ),
          title: Text(
            'Tendencias',
            style: TextStyle(fontSize: 10.0),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/plus.png'),
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/bandeja.png'),
          ),
          title: Text(
            'Bandeja',
            style: TextStyle(fontSize: 10.0),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/yo.png'),
          ),
          title: Text(
            'Yo',
            style: TextStyle(fontSize: 10.0),
          ),
        ),
      ],
    );
  }
}

class UITikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/urona_rolera.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        _blackGradient(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _topNav(),
            Column(
              children: <Widget>[
                _interactionButtons(),
                _postData(),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _blackGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ],
        ),
      ),
    );
  }

  Widget _topNav() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Siguiendo',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white,
                width: 40.0,
                height: 2.0,
              ),
            ],
          ),
          SizedBox(
            width: 30.0,
          ),
          Column(
            children: <Widget>[
              Text(
                'Para ti',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white,
                width: 40.0,
                height: 2.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _interactionButtons() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'images/beau.png',
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Image.asset('icons/corazon.png'),
          SizedBox(height: 5.0),
          Text(
            '69.9K',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset('icons/comentarios.png'),
          SizedBox(height: 5.0),
          Text(
            '4521',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset('icons/compartir.png'),
          SizedBox(height: 5.0),
          Text(
            '186',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _postData() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.0,
        right: 8.0,
        bottom: 15.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '@unrolare',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '04:45',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      'MENSIONAME EN AUDIOS, QUE QUIERES QUE HAGA, POR FA!!',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'icons/musica.png',
                          width: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Rolera Dana',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Sonido original',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.white24, width: 10.0),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'images/chica1.jpg',
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
