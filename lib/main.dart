import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyRadio(),
  ));
}

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  Color col = Colors.green;
  int? val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New  Widget')),
      backgroundColor: col,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            subtitle: Text('salom dunyo'),
              title: Text('Hello world '),
              value: 1,
              groupValue: val,
              onChanged: (v) {
                setState(() {
                  val = v;
                  col = Colors.yellow;
                });
              }),
          RadioListTile(
            activeColor: Colors.yellow,
            subtitle: Text('Salom koinot'),
              title: Text('Hi Universe '),
              value: 2,
              groupValue: val,
              onChanged: (v) {
                setState(() {
                  val = v;
                  col = Colors.blue;
                });
              }),
        ],
      ),
    );
  }
}
