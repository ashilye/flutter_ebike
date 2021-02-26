import 'package:flutter/widgets.dart';
import 'package:flutter_ebike/router/index.dart';

enum AnimType {
  L2R, //从左到右滑动
  R2L, //从右到左滑动
  B2T, //从底到上滑动
}


class RouterAnim extends PageRouteBuilder {
  final Widget widget;
  final AnimType animType;
  RouterAnim(this.widget,[this.animType = AnimType.R2L]): super(
      transitionDuration: const Duration(milliseconds: 200), //设置动画时长500毫秒
      pageBuilder: (BuildContext context, Animation<double> animation1,
          Animation<double> animation2) {
        return widget;
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child) {
        //渐变过渡
        switch (animType) {
          case AnimType.L2R:
            return leftToRightTransition(context,animation1,animation2,child);
          case AnimType.R2L:
            return rightToLeftTransition(context,animation1,animation2,child);
          case AnimType.B2T:
            return bottomToTopTransition(context,animation1,animation2,child);
        }
        return null;
      });
}