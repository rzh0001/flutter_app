import 'package:flutter_app/common/entities/entities.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'dart:convert';

import 'package:flutter_app/common/values/values.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    UserLoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      Url.login,
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(jsonDecode(response));
  }

  /// 注册
  static Future<bool> register({
    UserRegisterRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      Url.register,
      data: params?.toJson(),
    );
    print("here....try");
    return true;
  }
}
