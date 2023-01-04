import 'package:flutter/material.dart';

const List<String> list = <String>['Drop', 'Down', 'Menü'];

class Buttonlar extends StatefulWidget {
  const Buttonlar({super.key});

  @override
  State<Buttonlar> createState() => _ButtonlarState();
}

class _ButtonlarState extends State<Buttonlar> {
  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Uyarı!!"),
            content: Text("Button Menü Kullandınız!"),
            actions: [
              MaterialButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  String dropdownValue = list.first;
  bool switchValue = false; //switch default değer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Tıkla")
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Hakkında")
                  ],
                ),
              ),
            ],
            offset: Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
            // on selected we show the dialog box
            onSelected: (value) {
              // if value 1 show dialog
              if (value == 1) {
                _showDialog(context);
                // if value 2 show dialog
              } else if (value == 2) {
                _showDialog(context);
              }
            },
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  //buttonun shape propertysine
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              )),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text("Text Button"),
            style: TextButton.styleFrom(),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: const Text('Outline Button'),
          ),
        ),
        Expanded(
          child: FloatingActionButton(
            // Scaffold parametresi olan floatActionButton a atanır
            onPressed: () {}, // bir fonksiyon tetikler
            child: Icon(Icons.add), // floatingActionButton icon tipi
          ),
        ),
        Expanded(
          child: Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
                print(switchValue);
              });
            },
            activeColor: Colors.blueAccent,
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(Icons.bluetooth),
            tooltip: 'Buton tipi',
            onPressed: () {},
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 117, 150, 208),
                ),
                child: DropdownButton(
                  value: dropdownValue,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
          ),
        ),
      ]),
    );
  }
}
