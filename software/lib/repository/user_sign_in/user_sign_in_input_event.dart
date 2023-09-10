
import '../../abstract/abstract.dart';


class UserSignInInputEvent extends InputEvent {
  String email = '';
  String password = '';
  UserSignInInputEvent({
    String? email,
    String? password,
  });
}
