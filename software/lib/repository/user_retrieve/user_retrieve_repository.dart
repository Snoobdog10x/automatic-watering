library user_retrieve_repository;

import 'package:flutter/foundation.dart';

import '../../abstract/abstract.dart';

part 'user_retrieve_input_event.dart';
part 'user_retrieve_output_event.dart';

abstract mixin class UserRetrieveRepository
    implements
        AbstractRepository<UserRetrieveInputEvent, UserRetrieveOutputEvent> {
  void requestUserRetrieve(UserRetrieveInputEvent inputEvent) async {
    final db = FirebaseFirestore.instance;
    UserRetrieveOutputEvent outputEvent = UserRetrieveOutputEvent();
    try {
      var userId = inputEvent.userId;
      if (userId.isEmpty) {
        throw NotFoundException("User Id");
      }

      var snapshot = await db
          .collection(UserInformation.USER_INFORMATION)
          .doc(userId)
          .get();

      outputEvent.userInformation = UserInformation();
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
  void disposeUserRetrieveRepository() {}
}
