import 'package:dersbir/giris.dart';
import 'package:dersbir/girisyap.dart';
import 'package:dersbir/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Dersler';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://i0.wp.com/blog.mallow-tech.com/wp-content/uploads/2018/06/Flutter.png?fit=941%2C576',
                            // width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('Mobil Programlama'),
                        subtitle: Text('Flutter Giriş'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://i.ytimg.com/vi/Sbe5eOpV_L4/maxresdefault.jpg',
                            // width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('Mobil Programlama'),
                        subtitle: Text('Flutter Değişkenler'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://lh3.googleusercontent.com/EWZvifAYMFXxRwxWa1GjXt8NrDPY39ndSav5oXHs91H5h2gPWi_lPxf3yKNXhZQCXoTGIav6nsu11iOIZ5aFSVW8MZkbPOCX5Eip=w760-h380',
                            //width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('Mobil Programlama'),
                        subtitle: Text('material.io Components'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                    'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
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
              title: Text('Anasayfa'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anasayfa()),
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
            ListTile(
              title: Text('Çıkış Yap'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anasayfa()),
                );
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
