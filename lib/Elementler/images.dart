import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              "assets/flutter_logo.png",
              width: 300,
              height: 70,
            ),
          ),
          CircularProgressIndicator(),
          Image.network(
            "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            width: 500,
            height: 100,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
