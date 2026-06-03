import 'package:basic_app/src/model/employee_model.dart';
import 'package:basic_app/src/utilis/textStyle_widget.dart';
import 'package:flutter/material.dart';

class EmployeeCardWidget extends StatelessWidget {
  final EmployeeModel modelCard;
  final VoidCallback func;
  const EmployeeCardWidget({
    super.key,
    required this.modelCard,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: func,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(modelCard.name, style: textStyle),
              Text(modelCard.age.toString(), style: textStyle),
              Text(modelCard.salary.toString(), style: textStyle),
              const Divider(color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
