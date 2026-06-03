import 'package:flutter/material.dart';
import 'package:basic_app/src/model/employee_model.dart';
import 'package:basic_app/src/utilis/textStyle_widget.dart';

class EmployeeDetailScreen extends StatelessWidget {
  final EmployeeModel employee;

  const EmployeeDetailScreen({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Employee Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(employee.name, style: textStyle),
            Text(employee.age.toString(), style: textStyle),
            Text(employee.salary.toString(), style: textStyle),
          ],
        ),
      ),
    );
  }
}
