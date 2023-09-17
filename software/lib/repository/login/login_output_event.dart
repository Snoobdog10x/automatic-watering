part of login_repository;


class LoginOutputEvent extends OutputEvent {
  bool isLogged = false;
  LoginOutputEvent({
    bool? isLogged,
  }) {
    if (isLogged != null) this.isLogged = isLogged;
  }
}