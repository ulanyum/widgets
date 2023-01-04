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
  FocusNode _isimFocusNode = FocusNode();
  FocusNode _soyIsimFocusNode = FocusNode();
  FocusNode _mailFocusNode = FocusNode();
  FocusNode _kaydetFocusNode = FocusNode();

  var _isim = TextEditingController();
  var _soyisim = TextEditingController();
  var _email = TextEditingController();

  @override
  void dispose() {
    _isimFocusNode.dispose();
    _soyIsimFocusNode.dispose();
    _mailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _isimFocusNode.unfocus();
            _soyIsimFocusNode.unfocus();
            _mailFocusNode.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        focusNode: _isimFocusNode,
                        decoration: const InputDecoration(
                          hintText: 'İsim',
                        ),
                        validator: (String? isim) {
                          if (isim == null || isim.isEmpty) {
                            return 'İsim alanı Boş Geçilemez';
                          }
                          return null;
                        },
                        onFieldSubmitted: (term) {
                          _isimFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_soyIsimFocusNode);
                        },
                      ),
                      TextFormField(
                        focusNode: _soyIsimFocusNode,
                        decoration: const InputDecoration(
                          hintText: 'Soyisim',
                        ),
                        validator: (String? soyisim) {
                          if (soyisim == null || soyisim.isEmpty) {
                            return 'Soyisim alanı boş geçilemez';
                          }
                          return null;
                        },
                        onFieldSubmitted: (term) {
                          _soyIsimFocusNode.unfocus();
                          FocusScope.of(context).requestFocus(_mailFocusNode);
                        },
                      ),
                      TextFormField(
                        focusNode: _mailFocusNode,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                        validator: (String? email) {
                          //bu alana string constains metodu ile @ araması elenecek
                          if (email == null || email.isEmpty) {
                            return 'Mail alanı boş geçilemez';
                          }
                          return null;
                        },
                        onFieldSubmitted: (term) {
                          _mailFocusNode.unfocus();
                          FocusScope.of(context).requestFocus(_kaydetFocusNode);
                        },
                      ),
                      Center(
                        child: ElevatedButton(
                          focusNode: _kaydetFocusNode,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          child: const Text('Kaydet'),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                            title: Text("Erkek"),
                            value: 1,
                            groupValue: deger,
                            onChanged: (int? gelen) {
                              setState(() {
                                deger = gelen!;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            title: Text("Kadın"),
                            value: 2,
                            groupValue: deger,
                            onChanged: (int? gelen) {
                              setState(() {
                                deger = gelen!;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            title: Text("Diğer"),
                            value: 3,
                            groupValue: deger,
                            onChanged: (int? gelen) {
                              setState(() {
                                deger = gelen!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            title: Text("Checkbox"),
                            value: calisiyor,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? veri) {
                              print("Seçildi");
                              setState(() {
                                calisiyor = veri!;
                              });
                            }),
                      ),
                      Expanded(
                        child: Column(
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
                            Expanded(
                              child: Slider(
                                  value: sliderDeger,
                                  min: 0,
                                  max: 5,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      sliderDeger = newValue;
                                    });
                                  }),
                            )
                          ],
                        ),
                      ),
                    ])),
          ),
        ));
  }
}
