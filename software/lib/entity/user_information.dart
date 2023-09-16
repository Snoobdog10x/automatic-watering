part of entity;


class UserInformation with DateTimeHelper {
  static const String ID = "id";
  static const String USER_INFORMATION = 'user_information';
  static const String NAME = 'name';
  static const String AVATAR = 'avatar';
  static const String EMAIL = 'email';
  static const String DELETED = "deleted";
  static const String CREATED_AT = "created_at";
  static const String UPDATED_AT = "updated_at";
  static const String DELETED_AT = "deleted_at";
  
  String id = "";
  String name = '';
  String avatar = '';
  String email = '';
  bool deleted = false;
  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();
  DateTime deletedAt = DateTime.now();
  
  UserInformation({
    String? id,
    String? name,
    String? avatar,
    String? email,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    var now = DateTime.now();
    this.id = id ?? "";
    if (name != null) this.name = name;
    if (avatar != null) this.avatar = avatar;
    if (email != null) this.email = email;
    this.deleted = deleted ?? false;
    this.createdAt = createdAt ?? now;
    this.updatedAt = updatedAt ?? now;
    this.deletedAt = deletedAt ?? now;
  }

  UserInformation.fromJson(Map json) {
    fromJson(json);
  }

  UserInformation.fromJsonString(String jsonString) {
    Map json = jsonDecode(jsonString);
    fromJson(json);
  }
  
  String writeToJson() => jsonEncode(toJson());

  void fromJson(Map json) {
    id = json[ID];
    name = json[NAME];
    avatar = json[AVATAR];
    email = json[EMAIL];
    deleted = json[DELETED];
    createdAt = stringToDate(json[CREATED_AT]);
    updatedAt = stringToDate(json[UPDATED_AT]);
    deletedAt = stringToDate(json[DELETED_AT]);
  }

  Map toJson() => {
        ID: id,
        NAME: name,
        AVATAR: avatar,
        EMAIL: email,
        DELETED: deleted,
        CREATED_AT: dateToString(createdAt),
        UPDATED_AT: dateToString(updatedAt),
        DELETED_AT: dateToString(deletedAt),
      };

  @override
  bool operator ==(Object other) =>
      other is UserInformation &&
      other.runtimeType == runtimeType &&
      other.id == id;
      
  @override
  int get hashCode => id.hashCode;
}