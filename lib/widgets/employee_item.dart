import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sigma_tenant_task/models/employee.dart';
import 'package:sigma_tenant_task/providers/employee_model.dart';

class EmployeeItem extends StatelessWidget {
  final Employee employee;

  EmployeeItem({this.employee});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(employee.serialNo.toString() + '.'),
        title: Text(employee.name + '.'),
        subtitle: Text('₹ ' + employee.amount.toStringAsFixed(1) + '.'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                Provider.of<EmployeeModel>(context, listen: false)
                    .increaseAmount(employee.serialNo);
              },
              color: Colors.green,
            ),
            IconButton(
              icon: Icon(Icons.thumb_down),
              onPressed: () {
                Provider.of<EmployeeModel>(context, listen: false)
                    .decreaseAmount(employee.serialNo);
              },
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
