import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flustars/flustars.dart';

class Global {
  //初始化全局信息
  static Future init(VoidCallback callback) async {
    //运行初始
    WidgetsFlutterBinding.ensureInitialized();
    //竖屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // android 状态栏为透明的沉浸
    if(Platform.isAndroid){
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    await SpUtil.getInstance();
    callback();
  }
}
