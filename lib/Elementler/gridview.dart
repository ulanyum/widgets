import 'package:flutter/material.dart';

class Gridvews extends StatefulWidget {
  const Gridvews({super.key});

  @override
  State<Gridvews> createState() => _GridvewsState();
}

class _GridvewsState extends State<Gridvews> {
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Card $index"})
          .toList();

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: Scrollbar(
          controller: _controller,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(myProducts[index]["name"]),
                );
              }),
        ),
      ),
    );
  }
}
