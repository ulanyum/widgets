import 'package:flutter/material.dart';

class ElavatedButTonDetay extends StatefulWidget {
  const ElavatedButTonDetay({super.key});

  @override
  State<ElavatedButTonDetay> createState() => _ElavatedButTonDetayState();
}

class _ElavatedButTonDetayState extends State<ElavatedButTonDetay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  TabBar(
                    labelColor: Colors.black38,
                    tabs: [
                      Tab(icon: Icon(Icons.sports_soccer)),
                      Tab(icon: Icon(Icons.sports_basketball)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Detay(),
                        Kullanimi(),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

class Detay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: "Elevated Button",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "En klasik buton türlerinden birisidir."),
            TextSpan(
                text:
                    "Görünüş olarak zeminden yükseltilmiş altı hafif gölgelidir."),
            TextSpan(
                text:
                    "Tanımlandığında default olarak mavi renkli ve dikörtgen şeklinde gelir."),
            TextSpan(
                text:
                    "İçine girilen değerlerle rengi şekli ve diğer propertyleri ayarlanır")
          ]),
    );
  }
}

class Kullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(text: " ElevatedButton("),
            TextSpan(text: "onPressed: () {}"),
            TextSpan(text: "child: const Text(Elevated Button)"),
            TextSpan(text: ")")
          ]),
    );
  }
}
