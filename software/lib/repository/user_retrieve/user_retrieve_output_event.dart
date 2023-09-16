part of user_retrieve_repository;


class UserRetrieveOutputEvent extends OutputEvent {
  UserInformation userInformation = UserInformation();
  UserRetrieveOutputEvent({
    UserInformation? userInformation,
  }) {
    if (userInformation != null) this.userInformation = userInformation;
  }
}