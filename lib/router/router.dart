import 'package:flutter/widgets.dart';

///中间放大
Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return ScaleTransition(scale: animation, child: child);
}


Widget leftToRightTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      // 设置滑动的 X , Y 轴
      //从左到右
        begin: Offset(-1.0, 0.0),
        end: Offset(0.0, 0.0)
    ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn
    )),
    child: child,
  );
}

Widget rightToLeftTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      // 设置滑动的 X , Y 轴
      //从右到左
        begin: Offset(1.0, 0.0),
        end: Offset(0.0, 0.0)
    ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn
    )),
    child: child,
  );
}


Widget bottomToTopTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      // 设置滑动的 X , Y 轴
      //从低到顶
        begin: Offset(0.0, 1.0),
        end: Offset(0.0, 0.0)
    ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn
    )),
    child: child,
  );
}