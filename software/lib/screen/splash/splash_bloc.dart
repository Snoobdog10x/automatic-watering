import '../../abstract/abstract.dart';
import '../../repository/user_retrieve/user_retrieve_repository.dart';
import '../home/home_widget.dart';
import '../login/login_widget.dart';
import 'splash_widget.dart';

class SplashBloc extends AbstractBloc<SplashState> with UserRetrieveRepository {
  @override
  void destroy() {
    // TODO: implement destroy
  }

  void sendUserRetrieveEvent() {
    var event = UserRetrieveInputEvent();
    event.userId = appStore.authService.currentUser?.uid ?? "";
    requestUserRetrieve(event);
  }

  @override
  void responseUserRetrieve(UserRetrieveOutputEvent outputEvent) {
    if (outputEvent.exception != null) {
      state.pushToScreen(LoginWidget());
      return;
    }

    state.pushToScreen(HomeWidget());
    appStore.userService.setUserInformation(outputEvent.userInformation);
  }
}
