import 'package:fpdart/fpdart.dart';
import 'package:waggle_auth/domain/entities/auth/app_user.dart';

import '../../entities/push_notification/push_notification_failures.dart';
import '../../entities/push_notification/push_notification_message.dart';

abstract class IPushNotificationRepository {
  Future<Either<PushNotificationFailure, Unit>> initialize();
  Future<Either<PushNotificationFailure, Unit>> showNotification(
      {required PushNotificationMessage message});
  Future<Either<PushNotificationFailure, Unit>> saveToken(
      {required AppUser user});
  Stream<Option<PushNotificationMessage>> onBackground();
  Stream<Option<PushNotificationMessage>> onForground();
}
