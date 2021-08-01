import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Que20DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker Dialog Box'),
      ),
      body: Center(
        child: ////// Simple Dialog.
            ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2018),
              lastDate: DateTime(2025),
            ).then((DateTime value) {
              if (value != null) {
                DateTime _fromDate = DateTime.now();
                _fromDate = value;
                final String date = DateFormat.yMMMd().format(_fromDate);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected date: $date')),
                );
              }
            });
          },
          child: const Text('Date Picker Dialog'),
        ),
      ),
    );
  }
}
