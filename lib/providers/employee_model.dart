import 'package:flutter/material.dart';
import 'package:sigma_tenant_task/models/employee.dart';

class EmployeeModel with ChangeNotifier {
  List<Employee> employees = [
    Employee(serialNo: 1, name: 'Employee One', amount: 11520.0),
    Employee(serialNo: 2, name: 'Employee Two', amount: 20000.0),
    Employee(serialNo: 3, name: 'Employee Three', amount: 28800.0),
    Employee(serialNo: 4, name: 'Employee Four', amount: 38400.0),
    Employee(serialNo: 5, name: 'Employee Five', amount: 50000.0),
  ];

  List<Employee> get allEmployees => List.from(employees);

  void increaseAmount(int serialNo) {
    final emp = employees.firstWhere((e) => e.serialNo == serialNo);
    if (emp != null) {
      emp.amount *= 1.2;
      notifyListeners();
    }
  }

  void decreaseAmount(int serialNo) {
    final emp = employees.firstWhere((e) => e.serialNo == serialNo);
    if (emp != null) {
      emp.amount *= 0.9;
      notifyListeners();
    }
  }
}
