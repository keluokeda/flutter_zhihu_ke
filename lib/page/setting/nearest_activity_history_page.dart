import 'package:flutter/material.dart';

class NearestActivityHistoryPage extends StatefulWidget {
  @override
  _NearestActivityHistoryPageState createState() =>
      _NearestActivityHistoryPageState();
}

class _NearestActivityHistoryPageState
    extends State<NearestActivityHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最近活动历时'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('nova4 * HUAWEI VCE-AL00（本机）'),
            subtitle: Text('06/10 11:05 东莞'),

          )
        ],
      ),
    );
  }
}
