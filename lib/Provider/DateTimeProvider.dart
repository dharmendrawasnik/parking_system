import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeProvider with ChangeNotifier {
  String? _date = 'DD/MM/YYYY';
  String? get date => _date;

  late String _time = "Select time";
  String? get time => _time;
  void dateFuction(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((onValue) {
      _date = DateFormat('dd/MM/yyyy').format(onValue!);

      notifyListeners();
    });
  }

  void timeFunction(BuildContext context) {
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
    ).then((onValue){
      _time=onValue!.format(context).toString();
      notifyListeners();

    });
  }
}
