import 'package:basic_network/network_util.dart';
import 'package:basic_network/easy_response.dart';

import '../entity/user.dart';

class LoginApi {
  // 获取会员信息
  static String userInfo = "/user/info";

  static Future<EasyResponse<User>> postUserInfo() async {
    var resp = await HttpUtils().post(
      LoginApi.userInfo,
      params: {},
    );
    return EasyResponse(
        data: User.fromJson(resp.data),
        isSuccess: resp.isSuccess,
        message: resp.message);
  }
}
