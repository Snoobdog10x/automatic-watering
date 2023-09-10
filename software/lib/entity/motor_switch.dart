
import 'dart:convert';
import '../shared_product/functional/date_time_helper.dart';

enum ActionState { USER_REQUEST_ACTION, HARDWARE_CONFIRM }
class MotorSwitch with DateTimeHelper {
  static const String MOTOR_SWITCH = 'motor_switch';
  static const String IS_ON = 'is_on';
  static const String ACTION_STATE = 'action_state';
  static const String DELETED = "deleted";
  static const String CREATED_AT = "created_at";
  static const String UPDATED_AT = "updated_at";
  static const String DELETED_AT = "deleted_at";
  
  bool isOn = false;
  String actionState = '';
  bool deleted = false;
  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();
  DateTime deletedAt = DateTime.now();
  
  MotorSwitch({
    bool? isOn,
    String? actionState,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    var now = DateTime.now();
    if (isOn != null) this.isOn = isOn;
    if (actionState != null) this.actionState = actionState;
    this.deleted = deleted ?? false;
    this.createdAt = createdAt ?? now;
    this.updatedAt = updatedAt ?? now;
    this.deletedAt = deletedAt ?? now;
  }
  
  MotorSwitch.fromJson(Map json) {
    fromJson(json);
  }
  
  MotorSwitch.fromJsonString(String jsonString) {
    Map json = jsonDecode(jsonString);
    fromJson(json);
  }
  
  void fromJson(Map json) {
    isOn = json[IS_ON];
    actionState = json[ACTION_STATE];
    deleted = json[DELETED];
    createdAt = stringToDate(json[CREATED_AT]);
    updatedAt = stringToDate(json[UPDATED_AT]);
    deletedAt = stringToDate(json[DELETED_AT]);
  }
  
  Map toJson() => {
        IS_ON: isOn,
        ACTION_STATE: actionState,
        DELETED: deleted,
        CREATED_AT: dateToString(createdAt),
        UPDATED_AT: dateToString(updatedAt),
        DELETED_AT: dateToString(deletedAt),
      };
}
