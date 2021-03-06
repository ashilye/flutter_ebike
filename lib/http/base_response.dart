/// <BaseResponse<T> 返回 code msg data.
class BaseResponse<T> {
  int code;
  String msg;
  T data;

  BaseResponse(this.code, this.msg, this.data);

  @override
  String toString() {
    StringBuffer sb = new StringBuffer('{');
    sb.write("\"code\":$code");
    sb.write(",\"msg\":\"$msg\"");
    sb.write(",\"data\":\"$data\"");
    sb.write('}');
    return sb.toString();
  }
}

