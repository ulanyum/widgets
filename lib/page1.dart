import 'package:flutter/material.dart';
import 'package:odev4/Elementler/listview.dart';
import 'package:odev4/Elementler/listeler.dart';
import 'package:odev4/menu.dart';
import 'package:odev4/spotifyContainerim.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuYapimi(),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.alarm_add),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                  //navigatator push proprtysiyle sayfa2 ye gidildi
                  context,
                  MaterialPageRoute(builder: (context) => Listeler()),
                );
              },
            ),
          ],
          /*  leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            },
          ), */
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: Duration(milliseconds: 4),
                    curve: Curves.easeInOut);
              },
              child: Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 1),
                    curve: Curves.easeInOut);
              },
              child: Icon(Icons.chevron_right),
            )
          ],
        ),
        body: SingleChildScrollView(
          //Taşmaya karşı Geçici Çözüm
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 850,
                width: double.infinity,
                child: PageView(
                  controller: _pageController,
                  children: [
                    spotifyContainer(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
