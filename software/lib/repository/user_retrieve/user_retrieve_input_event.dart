part of user_retrieve_repository;

class UserRetrieveInputEvent extends InputEvent {
  String userId = '';
  UserRetrieveInputEvent({
    String? userId,
  }) {
    if (userId != null) this.userId = userId;
  }
}