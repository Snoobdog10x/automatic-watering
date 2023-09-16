part of user_update_repository;

class UserUpdateInputEvent extends InputEvent {
  String avatar = '';
  String name = '';
  UserUpdateInputEvent({
    String? avatar,
    String? name,
  }) {
    if (avatar != null) this.avatar = avatar;
    if (name != null) this.name = name;
  }
}