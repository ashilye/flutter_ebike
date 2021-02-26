import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ebike/config/constants.dart';
import 'package:flutter_ebike/router/index.dart';
import 'package:flutter_ebike/utils/index.dart';
import 'package:flutter_ebike/utils/log_utils.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        reverse: false,
        controller: PageController(
          initialPage: 0,
          viewportFraction: 1,
          keepPage: true,
        ),
        physics:BouncingScrollPhysics(),
        pageSnapping: true,
        onPageChanged: (index) {
          //监听事件
          LogUtils.GGQ('index=====$index');
        },
        children: [
          Image.asset(Utils.getAssetsImage('welcome1',format: 'jpg'),fit: BoxFit.cover,),
          Image.asset(Utils.getAssetsImage('welcome2',format: 'jpg'),fit: BoxFit.cover,),
          Image.asset(Utils.getAssetsImage('welcome3',format: 'jpg'),fit: BoxFit.cover,),
          GestureDetector(child: Image.asset(Utils.getAssetsImage('welcome4',format: 'jpg'),fit: BoxFit.cover,),onTap: (){
            SpUtil.putBool(Constants.SAVE_KEY_WELCOME, true);
            Navigator.of(context).popAndPushNamed(RouterName.loginPage);
          },)
        ],
      ),
    );
  }
}
