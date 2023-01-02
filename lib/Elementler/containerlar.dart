import 'package:flutter/material.dart';

class Containerlar extends StatelessWidget {
  const Containerlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                child: Text("Container"),
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  border: Border.all(),
                ),
              ),
              Container(
                child: Text("Container"),
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ],
          ),
          Container(
            child: Text("Container"),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
          ),
          Container(
            child: Text("Container"),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: RadialGradient(colors: [
                Colors.blue,
                Colors.amber,
                Colors.red,
              ], center: Alignment.center, radius: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
