import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Beranda(),
      routes: {
        '/Profil': (context) => MenuPage(title: 'Profil'),
        '/Pesan': (context) => MenuPage(title: 'Pesan'),
        '/Notifikasi': (context) => MenuPage(title: 'Notifikasi'),
        '/Pengaturan' : (context) => MenuPage(title: 'Pengaturan'),
      },
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Profil');
              },
              child: Text('Profil'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pesan');
              },
              child: Text('Pesan'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Notifikasi');
              },
              child: Text('Notifikasi'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pengaturan');
              },
              child: Text('Pengaturan'),
            ),
            
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final String title;

  MenuPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Halaman $title',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
