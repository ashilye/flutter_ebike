import 'package:flutter/material.dart';
import 'package:flutter_ebike/res/index.dart';

class TitleBar extends AppBar{

  TitleBar(@required String title,Function onBack,{Color backGroundColor = MyColors.app_toolbar,List<Widget> actions})
      : super(
      leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined), onPressed: onBack()),
      actions: actions,
      title: Text(title),
      elevation: 1.0, //Z轴 阴影
      centerTitle: true, // 标题居中
      brightness: Brightness.light, //亮度   light 亮色， dark 暗色
      backgroundColor:backGroundColor //背景颜色
  );

}