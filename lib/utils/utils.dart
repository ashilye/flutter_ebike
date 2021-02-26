import 'package:flutter/cupertino.dart';

class Utils{
    static String getAssetsImage(String name,{String format: 'png'}){
      return 'assets/images/$name.$format';
    }


}