import 'package:flutter/material.dart';

class PlaceHolders extends StatelessWidget {
  const PlaceHolders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
              width: 200,
              child: Placeholder(
                fallbackHeight: 100,
                fallbackWidth: 100,
              )),
          Expanded(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Placeholder(),
                ),
                Flexible(
                  flex: 4,
                  child: Placeholder(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Placeholder Widget"),
                        content: Text(
                            "Kullanılacak olan widget'ların uygulamanın taslak aşamasında nerde olacağını temsil eden bir kutu çizen widgettır"),
                      );
                    },
                  );
                },
                child: Text("Placeholder Widget")),
          )
        ],
      ),
    );
  }
}
