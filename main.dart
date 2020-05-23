
import 'package:dersbir/anasayfa.dart';
import 'package:dersbir/girisyap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Anasayfa(),
  ));
}

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Giriş Yap'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            );
          },
        ),
      ),
    );
  }
}
class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Geri Dön'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            );
          },
        ),
      ),
    );
  }
}

class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Geri Dön'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            );
          },
        ),
      ),
    );
  }
}
class Anasayfa extends StatelessWidget {
  final String title;

  Anasayfa({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/b3/27/56/b32756693b9c0d6139d29708db3fb1d6.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(''
                  'Hoşgeldiniz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,

                ),
              ),
            ),
          ),
          Positioned(
            child: AppBar(
              title: Text("Anasayfa"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  tooltip: 'Share',
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menüler',
                style: TextStyle( color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/b3/27/56/b32756693b9c0d6139d29708db3fb1d6.png'),
                fit: BoxFit.cover,
              ),
              ),
            ),

            /*decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
   'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
                fit: BoxFit.cover,
              ),*/
            ListTile(
              title: Text('Giriş Yap'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            ListTile(
              title: Text('Profil'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              },
            ),

            ListTile(
              title: Text('Ayarlar'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ayarlar()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}


/*class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Geri Dön!'),
        ),
      ),
    );
  }
}
*/

