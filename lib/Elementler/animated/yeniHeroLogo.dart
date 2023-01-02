import 'package:flutter/material.dart';

class YeniHeroLogo extends StatefulWidget {
  const YeniHeroLogo({super.key});

  @override
  State<YeniHeroLogo> createState() => _YeniHeroLogoState();
}

class _YeniHeroLogoState extends State<YeniHeroLogo> {
  double _width = 250;
  double _height = 250;
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: 'logo',
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 1),
            child: Image.asset("assets/ron_logo.jpg"),
          ),
        ),
      ),
    );
  }
}
