import 'package:flutter/material.dart';

class DatePickers extends StatefulWidget {
  const DatePickers({super.key});

  @override
  State<DatePickers> createState() => _DatePickersState();
}

class _DatePickersState extends State<DatePickers> {
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              _dateTime.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
                onPressed: _showDatePicker, child: Text("Tarih Al")),
          ),
        ],
      ),
    );
  }
}
