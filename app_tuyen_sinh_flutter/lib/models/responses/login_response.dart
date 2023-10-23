// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:app_tuyen_sinh_flutter/utils/enums/auth_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/sex.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/user_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/datetime_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/num_extension.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final dynamic message;
  final LoginResponseData data;
  final int code;
  final dynamic errors;

  LoginResponse({
    required this.message,
    required this.data,
    required this.code,
    required this.errors,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json["message"],
        data: LoginResponseData.fromJson(json["data"]),
        code: json["code"],
        errors: json["errors"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
        "code": code,
        "errors": errors,
      };
}

class LoginResponseData {
  final TokenResponse token;
  final AuthInfo user;

  LoginResponseData({
    required this.token,
    required this.user,
  });

  factory LoginResponseData.fromJson(Map<dynamic, dynamic> json) =>
      LoginResponseData(
        token: TokenResponse.fromJson(json["token"]),
        user: AuthInfo.fromJson(json["user"]),
      );

  LoginResponseData copyWith({
    TokenResponse? token,
    AuthInfo? user,
  }) {
    return LoginResponseData(
      token: token ?? this.token,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toJson() => {
        "token": token.toJson(),
        "user": user.toJson(),
      };
}

class TokenResponse {
  final String accessToken;
  final dynamic expiredAt;

  TokenResponse({
    required this.accessToken,
    required this.expiredAt,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) => TokenResponse(
        accessToken: json["access_token"],
        expiredAt: json["expired_at"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "expired_at": expiredAt,
      };
}

class AuthInfo {
  final int? id;
  final AuthType authType;
  final String? email;
  final String? password;
  final String? authId;
  final dynamic lastLogin;
  final bool isAdmin;
  final bool isActive;
  final bool isStaff;
  final bool isSuperuser;
  User userInfo;

  AuthInfo({
    this.id,
    required this.authType,
    this.email,
    this.password,
    this.authId,
    this.lastLogin,
    this.isAdmin = false,
    this.isActive = false,
    this.isStaff = false,
    this.isSuperuser = false,
    required this.userInfo,
  });

  factory AuthInfo.fromJson(Map json) => AuthInfo(
        id: json["id"],
        authType: AuthType.fromId(json["auth_type"]),
        email: json["email"],
        password: json["password"],
        authId: json["auth_id"],
        lastLogin: json["last_login"],
        isAdmin: json["is_admin"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isSuperuser: json["is_superuser"],
        userInfo: User.fromJson(json["user_info"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "auth_type": authType.id,
        "email": email,
        "password": password,
        "auth_id": authId,
        "last_login": lastLogin,
        "is_admin": isAdmin,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_superuser": isSuperuser,
        "user_info": userInfo.toJson(),
      };

  AuthInfo copyWith({User? userInfo}) {
    return AuthInfo(
      id: id,
      authType: authType,
      email: email,
      password: password,
      authId: authId,
      lastLogin: lastLogin,
      isAdmin: isAdmin,
      isActive: isActive,
      isStaff: isStaff,
      isSuperuser: isSuperuser,
      userInfo: userInfo ?? this.userInfo,
    );
  }
}

class User {
  int? id;
  String? username;
  UserType userType;
  Sex sex;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? birthDay;
  String? avatarUrl;
  String? address;
  String? phone;
  int point;

  User({
    this.id,
    this.username,
    this.userType = UserType.other,
    this.sex = Sex.unknown,
    this.createdAt,
    this.updatedAt,
    this.avatarUrl,
    this.address,
    this.birthDay,
    this.phone,
    this.point = 0,
  });

  factory User.fromJson(Map json) => User(
        id: json["id"],
        username: json["username"],
        userType: UserType.fromId(json["user_type"]),
        createdAt: DateTime.tryParse(json["created_at"].toString()),
        updatedAt: DateTime.tryParse(json["updated_at"].toString()),
        avatarUrl: json["avatar_url"],
        address: json["address"],
        point: NumExt.parse(json['point'], 12000).toInt(),
        birthDay: DateTime(1999, 11, 13),
        phone: json["phone"],
        sex: Sex.fromId(json["sex"] ?? 0),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "user_type": userType.id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "avatar_url": avatarUrl,
        "address": address,
        "point": point,
        "birth_day": birthDay?.toIso8601String(),
        "phone": phone,
        "sex": sex.id,
      };

  Map<String, dynamic> toJsonApiBody() => toJson()
    ..update(
      'birth_day',
      (_) => birthDay?.toYmdString(),
    );
}
