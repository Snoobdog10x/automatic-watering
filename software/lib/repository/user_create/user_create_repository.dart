library user_create_repository;
import '../../abstract/abstract.dart';

part 'user_create_input_event.dart';
part 'user_create_output_event.dart';

abstract mixin class UserCreateRepository
    implements AbstractRepository<UserCreateInputEvent, UserCreateOutputEvent> {
    
  void requestUserCreate(UserCreateInputEvent inputEvent) async {
    UserCreateOutputEvent outputEvent = UserCreateOutputEvent();
    try {
      
      responseUserCreate(outputEvent);
    } on AbstractException catch (e) {
      outputEvent.exception = e;
      responseUserCreate(outputEvent);
    } catch (e) {
      outputEvent.exception = UnCatchException(e.toString());
      responseUserCreate(outputEvent);
    }
  }

  void responseUserCreate(UserCreateOutputEvent outputEvent);
  void disposeUserCreateRepository() {
  
  }
}