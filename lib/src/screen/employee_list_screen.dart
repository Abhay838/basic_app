import 'package:basic_app/src/model/employee_model.dart';
import 'package:basic_app/src/utilis/employee_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/src/screen/employee_detail_screen.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  void _navigateToDetails(EmployeeModel employee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EmployeeDetailScreen(employee: employee),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Employees', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: employeeModel.length,
                itemBuilder: (context, index) {
                  final model = employeeModel[index];
                  return EmployeeCardWidget(
                    modelCard: model,
                    func: () => _navigateToDetails(model),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
