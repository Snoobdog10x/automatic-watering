
import '../../abstract/abstract.dart';
import 'user_sign_in_input_event.dart';
import 'user_sign_in_output_event.dart';

abstract mixin class  UserSignInRepository
    implements AbstractRepository<UserSignInInputEvent, UserSignInOutputEvent> {
    
  void requestUserSignIn(UserSignInInputEvent inputEvent) async {
    UserSignInOutputEvent outputEvent = UserSignInOutputEvent();
    try {
      
      responseUserSignIn(outputEvent);
    } on AbstractException catch (e) {
      outputEvent.exception = e;
      responseUserSignIn(outputEvent);
    } catch (e) {
      outputEvent.exception = UnCatchException(e.toString());
      responseUserSignIn(outputEvent);
    }
  }

  void responseUserSignIn(UserSignInOutputEvent outputEvent);
  void disposeUserSignInRepository() {
  
  }
}
