import 'package:flutter/material.dart';

class ClipCraps extends StatefulWidget {
  const ClipCraps({super.key});

  @override
  State<ClipCraps> createState() => _ClipCrapsState();
}

class CustomsCrap extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class _ClipCrapsState extends State<ClipCraps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  child: Center(
                    child: Text("ClipRRect",
                        style: Theme.of(context).textTheme.headline3),
                  ),
                  color: Colors.blue,
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  child: Center(
                    child: Text("ClipOval",
                        style: Theme.of(context).textTheme.headline3),
                  ),
                  color: Colors.amberAccent,
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: ClipPath(
              clipper: CustomsCrap(),
              child: Container(
                child: Center(
                  child: Text("Clip Path",
                      style: Theme.of(context).textTheme.headline3),
                ),
                color: Colors.redAccent,
                width: double.infinity,
                height: 200.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
