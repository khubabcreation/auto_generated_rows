import 'package:flutter/material.dart';
import 'package:textform_with_controllers/Experiment.dart';
import 'package:textform_with_controllers/FirstClass.dart';
import 'package:textform_with_controllers/SecondClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstClass(),
    );
  }
}
