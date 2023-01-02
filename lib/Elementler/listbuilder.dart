import 'package:flutter/material.dart';

class Listbuilderr extends StatelessWidget {
  const Listbuilderr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        child: ListView.builder(
            itemCount: 41,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.view_list),
                  title: Text("List item $index"));
            }),
      ),
    );
  }
}
