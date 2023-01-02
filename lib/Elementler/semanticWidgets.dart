import 'package:flutter/material.dart';

class SemanticWidgets extends StatelessWidget {
  const SemanticWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            label: "Ron Dijital" "Logo",
            button: true,
            enabled: true,
            child: Center(
              child: Image.network(
                "https://instagram.fyei1-1.fna.fbcdn.net/v/t51.2885-19/205581910_539277313919568_1162924141666904830_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fyei1-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=sy-CaXVdsQEAX-pmlPq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCVHNEGTwZsOdC-se3wXfDpM1vgQPxtiqRxQ2Wvqgj4qQ&oe=63A856B2&_nc_sid=8fd12b",
                width: 300,
                height: 300,
              ),
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
                        title: Text("Semantic Widget"),
                        content: Text(
                            "Widget’ların anlamını kodun içine yazmanızı sağlar. Bu property’lerle App Store Optimizasyonu yapmak mümkün olabilir."),
                      );
                    },
                  );
                },
                child: Text("Semantic Widget")),
          )
        ],
      ),
    );
  }
}
