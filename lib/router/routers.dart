import 'package:flutter/material.dart';
import 'package:flutter_ebike/pages/error/error_page.dart';
import 'package:flutter_ebike/pages/home/home_page.dart';
import 'package:flutter_ebike/pages/login/login_page.dart';
import 'package:flutter_ebike/pages/splash/SplashPage.dart';
import 'package:flutter_ebike/pages/welcome/welcome_page.dart';
import 'package:flutter_ebike/router/index.dart';

class RouterName{
  static const String splashPage = '/';
  static const String welcomePage = '/welcome_page';
  static const String loginPage = '/login_page';
  static const String homePage = '/home_page';
  static const String errorPage = '/error_page';
}


Route<dynamic> onGenerateRoute(RouteSettings settings){
  final String routeName = settings.name;
  print('当前访问路由名:$routeName');
  switch(routeName){
    case RouterName.splashPage:
      return RouterAnim(SplashPage());
    case RouterName.welcomePage:
      return RouterAnim(WelcomePage());
    case RouterName.loginPage:
      return RouterAnim(LoginPage());
    case RouterName.homePage:
      return RouterAnim(HomePage());
    case RouterName.errorPage:
      return RouterAnim(ErrorPage());
    default:
      return  MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ));
  }
}