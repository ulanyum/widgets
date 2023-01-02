import 'package:flutter/material.dart';

class spotifyContainer extends StatefulWidget {
  const spotifyContainer({super.key});

  @override
  State<spotifyContainer> createState() => _spotifyContainerState();
}

String yazi1 = "New Album";
String yazi2 = "Happier Than\nEver";
String yazi3 = "Billie Eilish";

final _pageController = PageController();

class _spotifyContainerState extends State<spotifyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(8, 204, 14, 14),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //Yeşil Container
              height: 200, //Yeşil containerın yüksekliği
              width: double
                  .infinity, //bu propertyle önüne bir sınır gelene kadar ilerler
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 231, 28),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //nesneler buraya gelecek
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 30, bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(yazi1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Text(yazi2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            Text(yazi3,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 160,
                    child: SizedBox(
                      height: 300,
                      child: Image.asset(
                        "assets/image1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //sizebox
          ],
        ),
      ),
    );
  }
}
