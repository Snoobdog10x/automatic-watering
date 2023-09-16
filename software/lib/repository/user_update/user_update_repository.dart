library user_update_repository;
import '../../abstract/abstract.dart';

part 'user_update_input_event.dart';
part 'user_update_output_event.dart';

abstract mixin class UserUpdateRepository
    implements AbstractRepository<UserUpdateInputEvent, UserUpdateOutputEvent> {
    
  void requestUserUpdate(UserUpdateInputEvent inputEvent) async {
    UserUpdateOutputEvent outputEvent = UserUpdateOutputEvent();
    try {
      
      responseUserUpdate(outputEvent);
    } on AbstractException catch (e) {
      outputEvent.exception = e;
      responseUserUpdate(outputEvent);
    } catch (e) {
      outputEvent.exception = UnCatchException(e.toString());
      responseUserUpdate(outputEvent);
    }
  }

  void responseUserUpdate(UserUpdateOutputEvent outputEvent);
  void disposeUserUpdateRepository() {
  
  }
}