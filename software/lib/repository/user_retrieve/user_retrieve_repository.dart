library user_retrieve_repository;

import 'package:flutter/foundation.dart';

import '../../abstract/abstract.dart';

part 'user_retrieve_input_event.dart';
part 'user_retrieve_output_event.dart';

class UserRetrieveRepository extends AbstractRepository<UserRetrieveInputEvent,
    UserRetrieveOutputEvent> {
  @override
  void request(
    UserRetrieveInputEvent inputEvent, {
    void Function(UserRetrieveOutputEvent outputEvent)? callback,
  }) async {
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
