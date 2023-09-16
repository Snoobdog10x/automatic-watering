part of user_create_repository;

class UserCreateInputEvent extends InputEvent {
  String email = '';
  String password = '';
  String avatar = '';
  String name = '';
  UserCreateInputEvent({
    String? email,
    String? password,
    String? avatar,
    String? name,
  }) {
    if (email != null) this.email = email;
    if (password != null) this.password = password;
    if (avatar != null) this.avatar = avatar;
    if (name != null) this.name = name;
  }
}