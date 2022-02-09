import 'dart:js';

import 'package:alfabet/binatang.dart';
import 'package:flutter/material.dart';
import 'hurufkapital.dart';
import 'hurufkecil.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigator',
    initialRoute: '/',
    routes: {
      '/': (context) => HalamanHome(),
      HurufKapital.routeName: (context) => HurufKapital(),
      HurufKecil.routeName: (context) => HurufKecil(),
      Binatang.routeName: (context) => Binatang(),
    },
  ));
}

class HalamanHome extends StatelessWidget {
  // const HalamanHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Halaman Home'),
      // ),
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 100, 50, 50),
        height: 300,
        child: ListView(
          children: <Widget>[
            ElevatedButton(
              child: Text('Huruf Kapital'),
              onPressed: () {
                Navigator.pushNamed(context, HurufKapital.routeName);
              },
            ),
            ElevatedButton(
              child: Text('Huruf Kecil'),
              onPressed: () {
                Navigator.pushNamed(context, HurufKecil.routeName);
              },
            ),
            ElevatedButton(
              child: Text('Nama Binatang'),
              onPressed: () {
                Navigator.pushNamed(context, Binatang.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
