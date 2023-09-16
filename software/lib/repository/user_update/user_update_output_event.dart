part of user_update_repository;


class UserUpdateOutputEvent extends OutputEvent {
  UserInformation userInformation = UserInformation();
  UserUpdateOutputEvent({
    UserInformation? userInformation,
  }) {
    if (userInformation != null) this.userInformation = userInformation;
  }
}