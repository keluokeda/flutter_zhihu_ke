import 'package:flutter/material.dart';
import 'package:flutterzhihuke/main.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _switch1 = true;
  bool _switch2 = false;
  bool _switch3 = true;
  bool _switch4 = true;
  bool _switch5 = false;
  bool _switch6 = true;
  bool _switch7 = false;
  bool _switch8 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: ListView(
        children: [
          buildListHeader('基本设置', context),
          _buildSwitchRow('水印图片', '在上传的图片中添加水印', _switch1, (value) {
            setState(() {
              _switch1 = value;
            });
          }),
          buildDivider(),
          _buildSwitchRow('省流量模式', '仅在Wi-Fi环境下才会自动加载图片', _switch2, (value) {
            setState(() {
              _switch2 = value;
            });
          }),
          buildDivider(),
          _buildSwitchRow('双击点赞', '在回答与文章正文区域支持双击赞同', _switch3, (value) {
            setState(() {
              _switch3 = value;
            });
          }),
          buildDivider(),
          _buildSwitchRow('摇动发送反馈', '遇到问题？摇一摇手机就能反馈~', _switch4, (value) {
            setState(() {
              _switch4 = value;
            });
          }),
          buildDivider(),
          _buildSwitchRow('可通过手机号找到我', '他人开放通讯录权限后可发现我的知乎账号', _switch5,
              (value) {
            setState(() {
              _switch5 = value;
            });
          }),
          buildDivider(),
          _buildSwitchRow('截屏后分享', '开启后截屏时可快捷分享', _switch6, (value) {
            setState(() {
              _switch6 = value;
            });
          }),
          buildDivider(),
          _buildTitleSubtitleRow('字体大小', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('视频自动播放', '仅在Wi-Fi环境下视频自动播放', () {
            Navigator.of(context).pushNamed('/videoAutoPlaySetting');
          }),
          buildDivider(),
          _buildSwitchRow('夜间模式跟随系统设置', '夜间模式与系统设置的模式一直', _switch7, (value) {
            setState(() {
              _switch7 = value;
            });
          }),
          buildDivider(),
          _buildTitleSubtitleRow('卡片挂件设置', null, () {}),
          buildDivider(),
          _buildSwitchRow('自动下载更新', '仅Wi-Fi环境下会自动下载', _switch8, (value) {
            setState(() {
              _switch8 = value;
            });
          }),
          buildDivider(),
          buildListHeader('通知设置', context),
          _buildTitleSubtitleRow('全局消息设置', '会影响到客户端与网页版', () {}),
          buildDivider(),
          _buildTitleSubtitleRow('全局邮件设置', '会影响到客户端与网页版', () {
            Navigator.of(context).pushNamed('/setting/globalMailSetting');
          }),
          buildDivider(),
          _buildTitleSubtitleRow('全局推送通知设置', '只影响客户端的通知推送', () {
            Navigator.of(context)
                .pushNamed('/setting/globalPushNotificationSetting');
          }),
          buildDivider(),
          buildListHeader('账号设置', context),
          _buildTitleSubtitleRow('账号与安全', '管理账号安全，修改账号密码等', () {
            Navigator.of(context).pushNamed('/setting/accountAndSecurity');
          }),
          buildDivider(),
          _buildTitleSubtitleRow('屏蔽设置', '会影响到客户端与网页版', () {}),
          buildDivider(),
          buildListHeader('关于与帮助', context),
          _buildTitleSubtitleRow('去评价', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('开源许可', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('知乎实验室', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('知乎用户满意度调研', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('检查更新', '当前版本6.43.0', () {}),
          buildDivider(),
          _buildTitleSubtitleRow('证照中心', null, () {}),
          buildDivider(),
          _buildTitleSubtitleRow('知乎协议', null, () {}),
          buildDivider(),
          FlatButton(
            onPressed: () {},
            child: Text('退出登录'),
            textColor: Colors.redAccent,
          ),
          buildDivider(),
          SizedBox(
            height: 16,
          ),
          Text(
            '@ 2011 - 2020 zhihu.com\nAll rights reserved',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchRow(
      String title, String subTitle, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }

  Widget _buildTitleSubtitleRow(
      String title, String subTitle, VoidCallback onTap) {
    return ListTile(
      title: Text(title),
      subtitle: subTitle == null ? null : Text(subTitle),
      onTap: onTap,
    );
  }
}
