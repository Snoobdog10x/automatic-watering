
import '../../abstract/abstract.dart';
import 'user_information.dart'

class UserSignInOutputEvent extends OutputEvent {
  UserInformation userInformation = UserInformation();
  UserSignInOutputEvent({
    UserInformation? user_information,
  });
}
