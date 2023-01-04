import 'package:flutter/material.dart';

class Boxlar extends StatelessWidget {
  const Boxlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 200.0,
              height: 300.0,
              child: Card(
                child: Center(child: Text('SizedBox')),
                color: Colors.amberAccent,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 2,
                child: Container(
                  child: Center(child: Text("Expanded ve Rotated box")),
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 200,
                ),
                child: Container(
                  child: Center(child: Text("Constrainedbox")),
                  color: Colors.blueAccent,
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
