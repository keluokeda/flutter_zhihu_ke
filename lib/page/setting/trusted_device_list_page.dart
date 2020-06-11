import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class TrustedDeviceListPage extends StatefulWidget {
  @override
  _TrustedDeviceListPageState createState() => _TrustedDeviceListPageState();
}

class _TrustedDeviceListPageState extends State<TrustedDeviceListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('所有的信任设备'),
      ),
      body: ListView(
        children: [
          buildListHeader('已信任设备', context),
          ListTile(
            title: Text('nova 4'),
            subtitle: Text('VCE-AL00'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/setting/accountAndSecurity/trustedDeviceDetail');
            },
          ),
          buildDivider(),
          ListTile(
            title: Text('魅蓝 note'),
            subtitle: Text('m1 note'),
            onTap: () {},
          ),
          buildDivider(),
          SizedBox(
            height: 8,
          ),
          ListTile(
            subtitle: Text('在信任设备上登录和使用知乎会被视为安全使用，无需进行安全验证。'),
          )
        ],
      ),
    );
  }
}
