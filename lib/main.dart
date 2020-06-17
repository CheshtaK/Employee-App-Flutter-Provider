import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sigma_tenant_task/providers/employee_model.dart';
import 'package:sigma_tenant_task/screens/employee_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmployeeModel(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: EmployeePage(),
      ),
    );
  }
}
