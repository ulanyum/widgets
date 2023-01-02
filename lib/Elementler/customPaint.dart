import 'package:flutter/material.dart';

class CustomPaints extends StatefulWidget {
  const CustomPaints({super.key});

  @override
  State<CustomPaints> createState() => _CustomPaintsState();
}

class _CustomPaintsState extends State<CustomPaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomPaint(
              child: const Text(
                "Pacman",
                style: TextStyle(color: Colors.blueAccent, fontSize: 30),
              ),
              painter: MyPainter(),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 400,
                child: CustomPaint(
                  child: Center(
                    child: const Text(
                      "Baska Çizim",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                    ),
                  ),
                  painter: MyPainter2(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff995588)
      ..style = PaintingStyle.fill;

    canvas.drawRect(Offset(0, 0) & const Size(400, 200), paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellowAccent;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
        height: 250,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
