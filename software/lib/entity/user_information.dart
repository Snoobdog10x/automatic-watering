
import 'dart:convert';
import '../abstract/abstract.dart';
import 'motor_switch.dart'

class UserInformation extends AbstractEntity {
  static const String USER_INFORMATION = 'user_information';
  static const String MOTOR_SWITCH = 'motor_switch';
  static const String USER_INFORMATION = 'user_information';
  static const String NAME = 'name';
  static const String AVATAR = 'avatar';
  static const String DATA = 'data';
  
  MotorSwitch motorSwitch = MotorSwitch();
  Map<String,UserInformation> userInformation = {};
  String name = '';
  String avatar = '';
  Map<String,String> data = {};
  
  UserInformation({
    super.id,
    MotorSwitch? motor_switch,
    Map<String,UserInformation>? user_information,
    String? name,
    String? avatar,
    Map<String,String>? data,
    super.deleted,
    super.createdAt,
    super.updatedAt,
    super.deletedAt,
  }) {
    if (motorSwitch != null) this.motorSwitch = motorSwitch;
    if (userInformation != null) this.userInformation = userInformation;
    if (name != null) this.name = name;
    if (avatar != null) this.avatar = avatar;
    if (data != null) this.data = data;
  }

  UserInformation.fromJson(Map json) {
    fromJson(json);
  }

  UserInformation.fromJsonString(String jsonString) {
    Map json = jsonDecode(jsonString);
    fromJson(json);
  }

  @override
  void fromJson(Map json) {
    super.fromJson(json);
    name = json[NAME];
    avatar = json[AVATAR];
    data = json[DATA];
  }

  @override
  Map toJson() => {
        ...super.toJson(),
        NAME: name,
        AVATAR: avatar,
        DATA: data,
      };

  @override
  bool operator ==(Object other) =>
      other is UserInformation &&
      other.runtimeType == runtimeType &&
      other.id == id;
}
