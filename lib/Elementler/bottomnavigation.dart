import 'package:flutter/material.dart';

class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({super.key});

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        currentIndex:
            _seciliSayfa, //seçili olan butonu yakalamak için tanımlandı
        onTap: _sayfaDegistir,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }

  int _seciliSayfa = 0;
  void _sayfaDegistir(int value) {
    setState(() {
      _seciliSayfa = value;
    });
    _pageController.jumpToPage(value);
  }
}
