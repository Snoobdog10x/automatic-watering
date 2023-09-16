library user_retrieve_repository;
import '../../abstract/abstract.dart';

part 'user_retrieve_input_event.dart';
part 'user_retrieve_output_event.dart';

abstract mixin class UserRetrieveRepository
    implements AbstractRepository<UserRetrieveInputEvent, UserRetrieveOutputEvent> {
    
  void requestUserRetrieve(UserRetrieveInputEvent inputEvent) async {
    UserRetrieveOutputEvent outputEvent = UserRetrieveOutputEvent();
    try {
      
      responseUserRetrieve(outputEvent);
    } on AbstractException catch (e) {
      outputEvent.exception = e;
      responseUserRetrieve(outputEvent);
    } catch (e) {
      outputEvent.exception = UnCatchException(e.toString());
      responseUserRetrieve(outputEvent);
    }
  }

  void responseUserRetrieve(UserRetrieveOutputEvent outputEvent);
  void disposeUserRetrieveRepository() {
  
  }
}