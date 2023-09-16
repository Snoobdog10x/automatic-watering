part of user_create_repository;


class UserCreateOutputEvent extends OutputEvent {
  UserInformation userInformation = UserInformation();
  UserCreateOutputEvent({
    UserInformation? userInformation,
  }) {
    if (userInformation != null) this.userInformation = userInformation;
  }
}