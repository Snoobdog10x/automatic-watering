library user_create_repository;
import '../../abstract/abstract.dart';

part 'user_create_input_event.dart';
part 'user_create_output_event.dart';

class UserCreateRepository extends AbstractRepository<UserCreateInputEvent, UserCreateOutputEvent> {
  @override
  void request(
    UserCreateInputEvent inputEvent, {
    void Function(UserCreateOutputEvent outputEvent)? callback,
  }) async {
    UserCreateOutputEvent outputEvent = UserCreateOutputEvent();
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