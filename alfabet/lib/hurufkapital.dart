import 'package:flutter/material.dart';

class HurufKapital extends StatelessWidget {
  final List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  // const HurufKapital({Key? key}) : super(key: key);
  static const String routeName = "/HurufKapital";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Huruf kapital"),
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
