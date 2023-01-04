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
                "https://upwork-usw2-prod-assets-static.s3.us-west-2.amazonaws.com/org-logo/1567525450545344512",
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
