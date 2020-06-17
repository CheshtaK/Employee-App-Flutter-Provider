import 'package:flutter/material.dart';

class Employee with ChangeNotifier {
  int serialNo;
  String name;
  double amount;

  Employee({this.serialNo, this.name, this.amount});
  Employee copyWith({int serialNo, String name, double amount}) {
    return Employee(
        serialNo: serialNo ?? this.serialNo,
        name: name ?? this.name,
        amount: amount ?? this.amount);
  }
}
