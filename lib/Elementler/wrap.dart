import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  Wraps({super.key});

  @override
  TableRow _tableRow = const TableRow(children: <Widget>[
    Padding(
      padding: EdgeInsets.all(10),
      child: Text("Kutu"),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text("Kutu"),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text("Kutu"),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text("Kutu"),
    ),
  ]);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
            child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.tealAccent,
              child: Center(
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.yellowAccent,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.redAccent,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.purpleAccent,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.orangeAccent,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Text("Wrap Widget",
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              defaultColumnWidth: FixedColumnWidth(120),
              children: [
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
              ],
            ),
          )
        ],
      ),
    );
  }
}
