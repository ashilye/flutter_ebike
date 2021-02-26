import 'package:flutter/material.dart';
import 'package:flutter_ebike/app/global.dart';
import 'package:flutter_ebike/pages/error/error_page.dart';
import 'package:flutter_ebike/router/index.dart';

void main(){
  Global.init(() {
      runApp(MyApp());
  });
}

// 状态管理
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '平安电车',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 默认路由
        initialRoute: RouterName.splashPage,
      // 路由拦截器  当通过Navigation.of(context).pushNamed跳转路由时， 在routes查找不到时，会调用该方法
      onGenerateRoute: onGenerateRoute,
        // 未知页面，404
        onUnknownRoute: (RouteSettings setting) { // 未知页面，404
          String name = setting.name;
          print("未匹配到路由:$name");
          return new MaterialPageRoute(builder: (context) {
            return ErrorPage();
          });
        }
    );
  }
}
