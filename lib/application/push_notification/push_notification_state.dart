part of 'push_notification_bloc.dart';

@freezed
class PushNotificationState with _$PushNotificationState {
  const factory PushNotificationState.initial() = _Initial;
  const factory PushNotificationState.permitted(
      {PushNotificationMessage? message}) = _Permitted;
  const factory PushNotificationState.denied() = _Denied;
}
