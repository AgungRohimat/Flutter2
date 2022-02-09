import 'package:flutter/material.dart';

class HurufKecil extends StatelessWidget {
  // const HurufKapital({Key? key}) : super(key: key);
  static const String routeName = "/HurufKecil";
  final List alphabet = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Huruf Kecil"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: <Widget>[
          GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20),
            children: List.generate(alphabet.length, (index) {
              return Container(
                height: 100,
                child: Card(
                  child: Center(
                      child: Text(alphabet[index],
                          style: TextStyle(color: Colors.black, fontSize: 80))),
                  color: Colors.white,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
