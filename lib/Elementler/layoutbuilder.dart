import 'package:flutter/material.dart';

class LayoutBuilders extends StatelessWidget {
  const LayoutBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        }));
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
          height: 400.0,
          width: double.infinity,
          color: Colors.red,
          child: Center(
            child: Text(
              "Layout Builder",
              style: TextStyle(fontSize: 50),
            ),
          )),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 400.0,
            width: double.infinity,
            color: Colors.red,
          ),
          Container(
            height: 400.0,
            width: double.infinity,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
