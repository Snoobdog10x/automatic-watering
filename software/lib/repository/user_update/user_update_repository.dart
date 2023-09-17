library user_update_repository;
import '../../abstract/abstract.dart';

part 'user_update_input_event.dart';
part 'user_update_output_event.dart';

class UserUpdateRepository extends AbstractRepository<UserUpdateInputEvent, UserUpdateOutputEvent> {
  @override
  void request(
    UserUpdateInputEvent inputEvent, {
    void Function(UserUpdateOutputEvent outputEvent)? callback,
  }) async {
    UserUpdateOutputEvent outputEvent = UserUpdateOutputEvent();
    try {

      callback?.call(outputEvent);
    } on AbstractException catch (e) {
      outputEvent.exception = e;
      callback?.call(outputEvent);
    } catch (e) {
      outputEvent.exception = UnCatchException(e.toString());
      callback?.call(outputEvent);
    }
  }
}