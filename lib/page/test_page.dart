import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
                themeStreamController.add(value);
              })
        ],
      ),
    );
  }
}
