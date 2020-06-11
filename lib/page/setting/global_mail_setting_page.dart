import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class GlobalMailSettingPage extends StatefulWidget {
  @override
  _GlobalMailSettingPageState createState() => _GlobalMailSettingPageState();
}

class _GlobalMailSettingPageState extends State<GlobalMailSettingPage> {
  bool switch1 = false;
  bool switch2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('全局邮件设置'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
              title: Text('知乎每周精选'),
              value: switch1,
              onChanged: (value) {
                setState(() {
                  switch1 = value;
                });
              }),
          buildDivider(),
          SwitchListTile(
              title: Text('新品发布和活动通知邮件'),
              value: switch2,
              onChanged: (value) {
                setState(() {
                  switch2 = value;
                });
              }),
        ],
      ),
    );
  }
}
