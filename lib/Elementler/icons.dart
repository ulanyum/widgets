import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            color: Colors.black38,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.attractions_rounded,
                  size: 70,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.palette,
                  size: 70,
                  color: Colors.lightBlue,
                ),
                Icon(
                  Icons.piano,
                  size: 70,
                  color: Colors.redAccent,
                ),
                Icon(
                  Icons.woman,
                  size: 70,
                  color: Colors.lime,
                ),
                Icon(
                  Icons.man,
                  size: 70,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black38,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_a_photo,
                  size: 70,
                  color: Color.fromARGB(255, 7, 196, 108),
                ),
                Icon(
                  Icons.all_out,
                  size: 70,
                  color: Color.fromARGB(255, 88, 2, 125),
                ),
                Icon(
                  Icons.restaurant_menu,
                  size: 70,
                  color: Color.fromARGB(255, 193, 15, 110),
                ),
                Icon(
                  Icons.lock_person,
                  size: 70,
                  color: Color.fromARGB(255, 17, 7, 159),
                ),
                Icon(
                  Icons.auto_awesome_motion,
                  size: 70,
                ),
                Divider(
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
