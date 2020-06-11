import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class AccountAndSecurityPage extends StatefulWidget {
  @override
  _AccountAndSecurityPageState createState() => _AccountAndSecurityPageState();
}

class _AccountAndSecurityPageState extends State<AccountAndSecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账号与安全'),
      ),
      body: ListView(
        children: [
          buildListHeader('知乎账号', context),
          ListTile(
            title: Text('邮箱'),
            subtitle: Text('绑定邮箱'),
            trailing: Text('尚未验证'),
            onTap: () {},
          ),
          buildDivider(),
          ListTile(
            title: Text('手机'),
            subtitle: Text('绑定手机，账号更安全'),
            trailing: Text('尚未验证'),
            onTap: () {},
          ),
          buildDivider(),
          ListTile(
            enabled: false,
            title: Text('设置密码'),
            subtitle: Text('绑定邮箱或手机后方可设置登录密码'),
          ),
          buildDivider(),
          buildListHeader(
            '账号安全',
            context,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/setting/accountAndSecurity/trustedDeviceList');
            },
            title: Text('信任设备'),
            subtitle: Text('2个设备'),
          ),
          buildDivider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(
                  '/setting/accountAndSecurity/nearestActivityHistory');
            },
            title: Text('最近活动历史'),
            subtitle: Text('1次活动会话'),
          ),
          buildDivider(),
          buildListHeader('社交账号', context),
          SwitchListTile(
            value: false,
            onChanged: (value) {},
            title: Text('新浪微博'),
            subtitle: Text('尚未绑定'),
          ),
          buildDivider(),
          SwitchListTile(
            value: true,
            onChanged: (value) {},
            title: Text('微信'),
            subtitle: Text('阿克蒙德'),
          ),
          buildDivider(),
          SwitchListTile(
            value: false,
            onChanged: (value) {},
            title: Text('QQ'),
            subtitle: Text('尚未绑定'),
          ),
          buildDivider(),
          ListTile(
            title: Text('开通机构号'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
