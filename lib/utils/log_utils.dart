import 'package:flustars/flustars.dart';
import 'package:flutter_ebike/config/index.dart';

class LogUtils{
  static void GGQ(String s){
    if(!Config.isRelease && !ObjectUtil.isEmptyString(s)){
      print("--GGQ-->${s}");
    }
  }
}