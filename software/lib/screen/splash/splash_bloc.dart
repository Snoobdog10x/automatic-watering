import '../../abstract/abstract.dart';
import '../../repository/user_retrieve/user_retrieve_repository.dart';
import 'splash_widget.dart';

class SplashBloc extends AbstractBloc<SplashState> {
  UserRetrieveRepository userRetrieveRepository = UserRetrieveRepository();
  void requestUserRetrieveRepository(String userId) {
    var inputEvent = UserRetrieveInputEvent();
    inputEvent.userId = "";
    userRetrieveRepository.request(
      inputEvent,
      callback: (outputEvent) {
        if (outputEvent.exception != null) {
          return;
        }

      },
    );
  }

  @override
  void destroy() {
    // TODO: implement destroy
  }
}
