import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class TrustedDeviceDetailPage extends StatefulWidget {
  @override
  _TrustedDeviceDetailPageState createState() =>
      _TrustedDeviceDetailPageState();
}

class _TrustedDeviceDetailPageState extends State<TrustedDeviceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('信任设备'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('设备名称'),
            subtitle: Text('nova 4'),
          ),
          buildDivider(),
          ListTile(
            title: Text('设备信息'),
            subtitle: Text('VCE-AL00'),
          ),
          buildDivider(),
          ListTile(
            title: Text('最后使用时间'),
            subtitle: Text('2020/06/11 09:41:41'),
          ),
          buildDivider(),
          FlatButton(
            onPressed: () {},
            child: Text('从信任设备中移除'),
            textColor: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}
