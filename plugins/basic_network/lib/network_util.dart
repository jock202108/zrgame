import 'dart:core';
import 'package:dio/dio.dart';
import 'base_response.dart';

class HttpUtils {
  static HttpUtils? _singleInstance;

  static HttpUtils get instance => HttpUtils();

  factory HttpUtils() {
    _singleInstance ??= HttpUtils._internal();
    return _singleInstance!;
  }

  static late Dio _dio;

  late BaseOptions _options;

  Dio getDio() {
    return _dio;
  }

  Future<BaseResponse> post(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    Response response = await _dio.post(
      url,
      data: params ?? {},
      options: Options(
          method: Method.post.value,
          headers: {"content-type": "application/json"}),
    );
    return BaseResponse(response.data);
  }

  Future<BaseResponse> get(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    Response response = await _dio.get(
      url,
      data: params ?? {},
      options: Options(
          method: Method.post.value,
          headers: {"content-type": "application/json"}),
    );
    return BaseResponse(response.data);
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

  HttpUtils._internal() {
    _options = BaseOptions(
      baseUrl: "",
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      responseType: ResponseType.plain,
      // 默认的headers 配置
      headers: {
        "Accept": "application/json",
      },
      validateStatus: (status) {
        //是否使用http状态码进行判断，为true 表示不使用http状态码判断
        return true;
      },
    );
    _dio = Dio(_options);
    _dio.httpClientAdapter = HttpClientAdapter();
  }
}

enum Method {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE');

  final String value;

  const Method(this.value);
}
