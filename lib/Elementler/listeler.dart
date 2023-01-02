import 'package:flutter/material.dart';
import 'package:odev4/Elementler/animatedList.dart';
import 'package:odev4/Elementler/listbuilder.dart';
import 'package:odev4/Elementler/listview.dart';

class Listeler extends StatelessWidget {
  const Listeler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Listviews()));
                  },
                  child: Text("ListViev"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Listbuilderr()));
                  },
                  child: Text("ListViev Builder"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Animatedlists()));
                  },
                  child: Text("Anmimated List"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
