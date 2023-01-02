import 'package:flutter/material.dart';
import 'dart:math';

import 'package:odev4/Elementler/animated/yeniHeroLogo.dart';

class Animasyonlar extends StatefulWidget {
  @override
  _Animasyonlar createState() => _Animasyonlar();
}

class _Animasyonlar extends State<Animasyonlar> with TickerProviderStateMixin {
  double _width = 50;
  double _height = 50;
  late AnimationController _controller;

  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                updateValues();
              },
              child: AnimatedContainer(
                child: Center(child: Text("Animated Container")),
                duration: Duration(seconds: 2),
                width: _width,
                height: _height,
                color: Colors.red,
                curve: Curves.bounceInOut,
              ),
            ),
            Center(
              child: Hero(
                tag: 'logo',
                child: Container(
                  width: _width,
                  height: _height,
                  child: Image.asset("assets/ron_logo.jpg"),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        //navigatator push proprtysiyle sayfa2 ye gidildi
                        context,
                        MaterialPageRoute(builder: (context) => YeniHeroLogo()),
                      );
                    },
                    child: Text("Hero Animasyon Widget")),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: AnimatedBuilder(
                child: Image.asset(
                  "assets/ron_logo.jpg",
                  width: 200.0,
                  height: 200.0,
                ),
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * 3.14,
                    child: child,
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  void updateValues() {
    setState(() {
      _width = _width == 125 ? 50 : 125;
      _height = _height == 125 ? 50 : 125;
    });
  }
}
