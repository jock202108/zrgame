// 数据解析中的常用字段{"data":xxx, "message":"xxx", "code":200}

class Constant {
  static const String data = "data";
  static const String msg = "msg";
  static const String message = "message";
  static const String code = "code";
  static const String status = "status";
}

// 数据解析的基础类
class BaseResponse<T> {
  late int code;
  late String message;
  T? data;

  bool get isSuccess => code == 200;

  BaseResponse(Map<String, dynamic> json) {
    code = parseCode(json);
    data = json[Constant.data]??{};
    message = parseMsg(json);
  }
}

String parseMsg(json) {
  if (json[Constant.msg] != null) {
    return json[Constant.msg];
  } else if (json[Constant.message] != null) {
    return json[Constant.message];
  } else {
    return '';
  }
}

int parseCode(json) {
  if (json[Constant.code] != null) {
    return json[Constant.code];
  } else if (json[Constant.status] != null) {
    return json[Constant.status];
  } else {
    return 500;
  }
}
