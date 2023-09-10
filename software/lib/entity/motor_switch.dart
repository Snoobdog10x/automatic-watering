
import 'dart:convert';
import '../abstract/abstract.dart';

ActionState { USER_REQUEST_ACTION, HARDWARE_CONFIRM }
class MotorSwitch extends AbstractEntity {
  static const String MOTOR_SWITCH = 'motor_switch';
  static const String IS_ON = 'is_on';
  static const String ACTION_STATE = 'action_state';
  
  bool isOn = false;
  String actionState = '';
  
  UserInformation({
    super.id,
    bool? is_on,
    String? action_state,
    super.deleted,
    super.createdAt,
    super.updatedAt,
    super.deletedAt,
  }) {
    if (isOn != null) this.isOn = isOn;
    if (actionState != null) this.actionState = actionState;
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
    isOn = json[IS_ON];
    actionState = json[ACTION_STATE];
  }

  @override
  Map toJson() => {
        ...super.toJson(),
        IS_ON: isOn,
        ACTION_STATE: actionState,
      };

  @override
  bool operator ==(Object other) =>
      other is MotorSwitch &&
      other.runtimeType == runtimeType &&
      other.id == id;
}
