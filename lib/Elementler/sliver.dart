import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //title: Text("Sliver AppBar Kullanımı"),
          backgroundColor: Colors.orange,
          expandedHeight: 300,
          floating: false,
          pinned: true,

          //snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver AppBar"),
            centerTitle: true,
            background: Image.asset(
              "assets/profil_pic.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SizedBox(
                width: 30,
                height: 30,
                child: Card(
                  color: Colors.blueAccent,
                ),
              );
            }),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4))
      ],
    );
  }
}
