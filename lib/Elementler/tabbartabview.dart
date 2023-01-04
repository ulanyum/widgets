import 'package:flutter/material.dart';
import 'package:odev4/menu.dart';
import 'package:odev4/page1.dart';

class TabbarandTabview extends StatelessWidget {
  const TabbarandTabview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black38,
              tabs: [
                Tab(icon: Icon(Icons.sports_soccer)),
                Tab(icon: Icon(Icons.sports_basketball)),
                Tab(icon: Icon(Icons.sports_volleyball)),
                Tab(icon: Icon(Icons.sports_tennis)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Footballs(),
                  Basketballs(),
                  Volleyballs(),
                  Tenniss(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Footballs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.greenAccent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    //navigatator push proprtysiyle Anasayfaya gidildi
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.sports_soccer,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Basketballs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.orangeAccent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    //navigatator push proprtysiyle Anasayfaya gidildi
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.sports_basketball,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Volleyballs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.blueAccent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    //navigatator push proprtysiyle Anasayfaya gidildi
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.sports_volleyball,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tenniss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.pinkAccent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    //navigatator push proprtysiyle Anasayfaya gidildi
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.sports_tennis,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
