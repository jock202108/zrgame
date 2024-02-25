/// 管理错误码的状态

// ignore_for_file: constant_identifier_names

class ErrorStatus {
  // 数据成功的Code
  static const int REQUEST_DATA_OK = 0;

  // 请求成功
  static const int SUCCESS = 200;

  // 服务器拒绝访问
  static const int FORBIDDEN = 403;

  // 未找到服务器
  static const int NOT_FOUND = 404;

  // 其他错误
  static const int UNKNOWN_ERROR = 1000;

  // 网络异常
  static const int NETWORK_ERROR = 1001;

  // 服务器连接错误
  static const int SOCKET_ERROR = 1002;

  // 服务器内部错误
  static const int SERVER_ERROR = 1003;

  // 连接超时
  static const int TIMEOUT_ERROR = 1004;
  // 连接超时
  static const int WITHDRW_ERRO = 700003;

  // 设置修改密码 原密码错误
  static const int SETTING_MODIFY_OLDPWD_ERR = 100061;
  // 网络请求取消
  static const int CANCEL_ERROR = 1005;

  // 数据转对象错误
  static const int PARSE_ERROR = 1006;
  // 长时间未操作

  static const int NOT_OPRATE_ERROR = 20001;

  // token过期
  static const int TOKEN_EXPIRED_ERROR = 20002;

  // 在别地方登录
  static const int TOKEN_LOGINELSE_ERROR = 20003;

  // token过期1
  static const int TOKEN_EXPIRED_ERROR_1 = 20000;

  static const int CREATE_MEMBER_ERROR = 100034;

  static const CREATE_MEMBER_ERROR_IP_BLACK = -10003;

  static const CREATE_MEMBER_ERROR_DEVICE_BLACK = -10005;

  static const CREATE_MEMBER_ERROR_PASSWORD = 100036;

  static const CREATE_MEMBER_ERROR_PROXY_NOT_FOUND = 100033;

  static const CREATE_MEMBER_ERROR_CLUB_NOT_FOUND = 12000035;

  static const CREATE_MEMBER_ERROR_CLUB_FULL = 12000036;
  static const PROXY_UPDATE_REBATE_FAILE = 10041;

  static const int CREATE_MEMBER_ACCOUNT_ERROR = 95555;

  static const INVALID_ACCOUNT = 403;
}
