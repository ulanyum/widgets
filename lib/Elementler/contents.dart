import 'package:flutter/material.dart';

class Yazilar extends StatelessWidget {
  const Yazilar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: richTextWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                  tileColor: Color.fromARGB(160, 255, 145, 0),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ), // başlıktan önce gösterilecek icon aavatar
                  title: Text("Hasan"), // Başlık
                  subtitle: Text(
                      "LisTile Örneği"), //Başlığın altında görüntülenen ek içerik
                  trailing:
                      Icon(Icons.list), //Başlıktan sonra görüntülenecek icon
                  isThreeLine:
                      false, // üç satır metin göstermesi istenip istenmediği
                  contentPadding: EdgeInsets.all(
                      8.0), // iç ittirme boşluk değeri bilgiğimiz padding
                  onTap:
                      () {}, //kullanıcı dokunduğunda atadığımız bir fonksiyon kolayca işlem yapaniliriz
                  onLongPress: () {},

                  ///kullanıcı uzun dokunduğunda tadığımız bir fonksiyon kolayca işlem yapaniliriz
                  selected:
                      false //true olduğunda, simgeler ve metinler aynı renkte oluşturulur.
                  ),
            ),
            Card(
              elevation: 3,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                      size: 26.0,
                    ),
                    title: Text(
                      "Hasan Tütüncüoğlu",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("Flutter developer"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget textWidget() {
  return Text(
    "Text Widget",
    style: TextStyle(
      fontSize: 20,
    ),
  );
}

Widget richTextWidget() {
  return RichText(
    text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black54,
        ),
        children: [
          TextSpan(
            text: "Zengin ",
          ),
          TextSpan(text: "Metin ", style: TextStyle(color: Colors.lightBlue)),
          TextSpan(
            text: "İçeriği",
          )
        ]),
  );
}
