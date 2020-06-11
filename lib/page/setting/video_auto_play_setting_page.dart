import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class VideoAutoPlaySettingPage extends StatefulWidget {
  @override
  _VideoAutoPlaySettingPageState createState() =>
      _VideoAutoPlaySettingPageState();
}

class _VideoAutoPlaySettingPageState extends State<VideoAutoPlaySettingPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('视频自动播放'),
      ),
      body: Column(
        children: [
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('移动流量和Wi-Fi环境下'),
              value: 0,
              groupValue: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              }),
          buildDivider(),
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('仅在Wi-Fi环境下'),
              value: 1,
              groupValue: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              }),
          buildDivider(),
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('关闭'),
              value: 2,
              groupValue: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              }),
        ],
      ),
    );
  }
}
