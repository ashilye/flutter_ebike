import 'dart:async';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ebike/config/constants.dart';
import 'package:flutter_ebike/router/index.dart';
import 'package:flutter_ebike/utils/index.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer _timer;
  int _currentTime = 0;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer time) {
      _currentTime++;
      if (_currentTime >= 5) {
        _timer.cancel();
         bool isWelcome = SpUtil.getBool(Constants.SAVE_KEY_WELCOME,defValue: false);
         if(isWelcome){
           Navigator.of(context).popAndPushNamed(RouterName.loginPage);
         }else{
           Navigator.of(context).popAndPushNamed(RouterName.welcomePage);
         }
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Utils.getAssetsImage('pic_splash', format: 'jpg'),fit: BoxFit.cover,),
          Positioned(child: Stack(
            ///子Widget居中
            alignment: Alignment.center,
            children: [
              ///圆形进度
              CircularProgressIndicator(
                ///当前指示的进度 0.0 -1.0
                value: _currentTime / 5,
              ),
              ///显示的文本
              Text("${5-_currentTime}",style: TextStyle(color: Colors.white,fontSize: 8.0)),
            ],
          ),top: 30,right: 20,)
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
