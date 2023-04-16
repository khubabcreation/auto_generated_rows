import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FirstClass extends StatefulWidget {
  const FirstClass({super.key});

  @override
  State<FirstClass> createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  final first = TextEditingController();
  final second = TextEditingController();
  final third = TextEditingController();
  final fourth = TextEditingController();

  List<Map<String, TextEditingController>> listOfController = [];
  List<Map<String, Widget>> listOfFields = [];

  @override
  void initState() {
    super.initState();

    var mapOflist = {
      'first': TextFormField(
        controller: first,
      ),
      'second': TextFormField(
        controller: second,
      ),
      'third': TextFormField(
        controller: third,
      ),
      'fourth': TextFormField(
        controller: fourth,
      ),
    };

    listOfFields.add(mapOflist);
    listOfController.add(
        {'first': first, 'second': second, 'third': third, 'fourth': fourth});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('list Generator'),
      ),
      body: Container(
          height: height,
          width: width,
          child: Column(
              children: listOfFields.map((e) {
            return Row(children: [
              Expanded(child: e['first']!),
              Expanded(child: e['second']!),
              Expanded(child: e['third']!),
              Expanded(child: e['fourth']!),
            ]);
          }).toList())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final first = TextEditingController();
          final second = TextEditingController();
          final third = TextEditingController();
          final fourth = TextEditingController();

          listOfFields.add({
            'first': TextFormField(
              controller: first,
              decoration: InputDecoration(hintText: 'first field'),
            ),
            'second': TextFormField(
              controller: second,
              decoration: InputDecoration(hintText: 'first field'),
            ),
            'third': TextFormField(
              controller: third,
              decoration: InputDecoration(hintText: 'first field'),
            ),
            'fourth': TextFormField(
              controller: fourth,
              decoration: InputDecoration(hintText: 'first field'),
            ),
          });
          listOfController.add({
            'first': first,
            'second': second,
            'third': third,
            'fourth': fourth,
          });
          setState(() {});
          print(listOfFields.length.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
