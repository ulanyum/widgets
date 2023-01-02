import 'package:flutter/material.dart';

class AspectRatios extends StatelessWidget {
  const AspectRatios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amber,
                child: Center(child: Text("Aspect Ratio  4/3")),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                color: Colors.amber,
                child: Center(child: Text("Expanded")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
