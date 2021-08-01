import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Que40DateRangePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateRange Dialog Box'),
      ),
      body: Center(
        child: ////// Simple Dialog.
            ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.purple),
          onPressed: () {
            showDateRangePicker(
              context: context,
              firstDate: DateTime(2018),
              lastDate: DateTime(2025),
            ).then((DateTimeRange value) {
              if (value != null) {
                DateTimeRange _fromRange =
                    DateTimeRange(start: DateTime.now(), end: DateTime.now());
                _fromRange = value;
                final String range =
                    '${DateFormat.yMMMd().format(_fromRange.start)} - ${DateFormat.yMMMd().format(_fromRange.end)}';
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(range)),
                );
              }
            });
          },
          child: const Text('Date Range Picker Dialog'),
        ),
      ),
    );
  }
}
