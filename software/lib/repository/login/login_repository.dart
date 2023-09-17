library login_repository;
import '../../abstract/abstract.dart';

part 'login_input_event.dart';
part 'login_output_event.dart';

class LoginRepository extends AbstractRepository<LoginInputEvent, LoginOutputEvent> {
  @override
  void request(
    LoginInputEvent inputEvent, {
    void Function(LoginOutputEvent outputEvent)? callback,
  }) async {
    LoginOutputEvent outputEvent = LoginOutputEvent();
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