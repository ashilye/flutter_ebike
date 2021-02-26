class Config{
  static const String BASE_URL = 'https://api.hyntech.net';

  static const int SUCCESS_CODE = 200;


  /// 是否 release
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

}