part of login_repository;

class LoginInputEvent extends InputEvent {
  String email = '';
  String password = '';
  LoginInputEvent({
    String? email,
    String? password,
  }) {
    if (email != null) this.email = email;
    if (password != null) this.password = password;
  }
}