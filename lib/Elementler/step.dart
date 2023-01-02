import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  int _currentStep = 0;
  StepperType _stepperType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Stepper(
                    type: _stepperType,
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue: continued,
                    onStepCancel: cancelled,
                    steps: [
                  Step(
                      title: Text("Kişisel Bilgiler"),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(labelText: "İsim"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Soyisim"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Eposta"),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled),
                  Step(
                      title: Text("Kullanıcı Hesap Bilgileri"),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Kulanıcı Adı"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Şifre"),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Şifre Tekrar"),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled),
                ]))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.list), onPressed: adimYonDegistirici),
    );
  }

  tapped(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  void continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  void cancelled() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  void adimYonDegistirici() {
    setState(() {
      _stepperType == StepperType.vertical
          ? _stepperType = StepperType.horizontal
          : _stepperType = StepperType.vertical;
    });
  }
}
