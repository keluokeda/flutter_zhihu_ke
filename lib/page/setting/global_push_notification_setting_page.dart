import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class GlobalPushNotificationSettingPage extends StatefulWidget {
  @override
  _GlobalPushNotificationSettingPageState createState() =>
      _GlobalPushNotificationSettingPageState();
}

class _GlobalPushNotificationSettingPageState
    extends State<GlobalPushNotificationSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('全局推送通知设置'),
      ),
      body: ListView(
        children: [
          buildListHeader('打开后将推送相应类型消息', context),
          CheckboxListTile(
            value: true,
            onChanged: (v) {},
            title: Text('知乎推荐'),
            subtitle: Text('知乎有精选内容时通知我'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('有人发私信给我'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('有人邀请我回答问题'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('提及 / 评论'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('赞 / 喜欢 / 鼓掌'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('有人添加 / 认可我的形象关键词'),
          ),
          buildDivider(),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: Text('转发了我的想法'),
          ),
          buildDivider(),
          ListTile(
            title: Text('有人关注了我'),
            onTap: () {},
          ),
          buildDivider(),
          ListTile(
            title: Text('关注动态'),
            onTap: () {},
          ),
          buildDivider(),
          ListTile(
            title: Text('参与动态'),
            onTap: () {},
          ),
          buildDivider(),
          buildListHeader('免打搅', context),
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            title: Text('免打搅模式'),
            subtitle: Text('开启后 每日21:00 - 次日08:88将不会受到推送消息'),
          ),
          buildDivider(),
          ListTile(
            title: Text('开始时间'),
            subtitle: Text('21:00'),
            onTap: () {
              showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 21, minute: 00));
            },
          ),
          buildDivider(),
          ListTile(
            title: Text('结束时间'),
            subtitle: Text('08:00'),
            onTap: (){
              showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 8, minute: 00));
            },
          )
        ],
      ),
    );
  }
}
