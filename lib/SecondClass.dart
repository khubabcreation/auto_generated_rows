import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  final first = TextEditingController();
  List<Map<String, TextEditingController>> listOfcontroller = [];
  List<Map<String, Widget>> listOfFields = [];

  @override
  void initState() {
    super.initState();
    listOfFields.add({
      'first': TextFormField(
        controller: first,
        decoration: InputDecoration(hintText: 'first Record'),
      ),
    });
    listOfcontroller.add({
      'first': first,
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Map class !'),
        actions: [
          ElevatedButton(
              onPressed: () {
                listOfcontroller.forEach((e) {
                  final txtcontroller = e['first'];
                  print(txtcontroller!.text.toString());
                });
              },
              child: Icon(Icons.show_chart))
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: listOfFields.map((e) {
            return Expanded(child: e['first']!);
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final first = TextEditingController();
          listOfFields.add({
            'first': TextFormField(
              controller: first,
              decoration: InputDecoration(hintText: 'new Record'),
            ),
          });
          listOfcontroller.add({
            'first': first,
          });
          setState(() {});
          print(listOfFields.length.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
