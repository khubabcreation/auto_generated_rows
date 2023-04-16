import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:textform_with_controllers/Student.dart';

class ExperimentClass extends StatefulWidget {
  const ExperimentClass({super.key});

  @override
  State<ExperimentClass> createState() => _ExperimentClassState();
}

class _ExperimentClassState extends State<ExperimentClass> {
  List<Map<String, Student>> listofStudents = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Experiment Class here ")),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: listofStudents.map((e) {
              return Row(
                children: [
                  Expanded(child: Text(e['student']!.name)),
                  Expanded(child: Text(e['student']!.rollNumber.toString())),
                  Expanded(child: Text(e['student']!.fathername.toString())),
                ],
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Student s =
              Student(name: 'khubab', rollNumber: 1, fathername: 'Ramzan');
          listofStudents.add({
            'student': s,
          });
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
