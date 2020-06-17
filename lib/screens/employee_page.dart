import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sigma_tenant_task/providers/employee_model.dart';
import 'package:sigma_tenant_task/widgets/employee_item.dart';

class EmployeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Employee App',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orangeAccent[400]),
      body: Container(
        child: Consumer<EmployeeModel>(
          builder: (context, employees, child) => ListView(
            children: employees.allEmployees
                .map((e) => EmployeeItem(employee: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
