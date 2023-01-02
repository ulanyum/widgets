import 'dart:ui';

import 'package:flutter/material.dart';

class Formlar extends StatefulWidget {
  Formlar({super.key});

  @override
  State<Formlar> createState() => _FormlarState();
}

class _FormlarState extends State<Formlar> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int deger = 0;
  bool calisiyor = false;
  double sliderDeger = 0.0;
  var isim = TextEditingController();
  var soyisim = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Adı',
                      ),
                      validator: (String? isim) {
                        if (isim == null || isim.isEmpty) {
                          return 'Lütfen Bütün Alanları Doldurunuz';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Soyadı',
                      ),
                      validator: (String? soyisim) {
                        if (soyisim == null || soyisim.isEmpty) {
                          return 'Lütfen Bütün Alanları Doldurunuz';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: (String? email) {
                        //bu alana string constains metodu ile @ araması elenecek
                        if (email == null || email.isEmpty) {
                          return 'Lütfen Bütün Alanları Doldurunuz';
                        }
                        return null;
                      },
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          child: const Text('Kaydet'),
                        ),
                      ),
                    ),
                    RadioListTile(
                        title: Text("Erkek"),
                        value: 1,
                        groupValue: deger,
                        onChanged: (int? gelen) {
                          setState(() {
                            deger = gelen!;
                          });
                        }),
                    RadioListTile(
                        title: Text("Kadın"),
                        value: 2,
                        groupValue: deger,
                        onChanged: (int? gelen) {
                          setState(() {
                            deger = gelen!;
                          });
                        }),
                    RadioListTile(
                        title: Text("Diğer"),
                        value: 3,
                        groupValue: deger,
                        onChanged: (int? gelen) {
                          setState(() {
                            deger = gelen!;
                          });
                        }),
                    CheckboxListTile(
                        title: Text("Checkbox"),
                        value: calisiyor,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? veri) {
                          print("Seçildi");
                          setState(() {
                            calisiyor = veri!;
                          });
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "İngilizce Seviyeniz " +
                              sliderDeger.round().toString(),
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                            value: sliderDeger,
                            min: 0,
                            max: 5,
                            onChanged: (double newValue) {
                              setState(() {
                                sliderDeger = newValue;
                              });
                            })
                      ],
                    ),
                  ])),
        ));
  }
}
