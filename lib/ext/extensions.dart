import 'package:flutter_ebike/config/index.dart';

extension IntResultOK on int {
  bool get isResultOK {
    return this == Config.SUCCESS_CODE;
  }
}

