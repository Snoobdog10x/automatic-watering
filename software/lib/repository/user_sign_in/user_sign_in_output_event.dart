
import '../../abstract/abstract.dart';
import '../../entity/user_information.dart';

class UserSignInOutputEvent extends OutputEvent {
  UserInformation userInformation = UserInformation();
  UserSignInOutputEvent({
    UserInformation? userInformation,
  });
}
