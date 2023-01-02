import 'package:flutter/material.dart';

class SnacksBars extends StatelessWidget {
  SnacksBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text("SnackBar Göster !"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }

  final snackBar = SnackBar(
    content: Text("Snackbar Gösterildi"),
    backgroundColor: Colors.red,
  );
}
