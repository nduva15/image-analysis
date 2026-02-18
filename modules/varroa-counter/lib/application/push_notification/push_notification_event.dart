part of 'push_notification_bloc.dart';

@freezed
class PushNotificationEvent with _$PushNotificationEvent {
  const factory PushNotificationEvent.initialize() = _Initialize;
  const factory PushNotificationEvent.onForground() = _OnForground;
  const factory PushNotificationEvent.onBackground() = _OnBackground;
  const factory PushNotificationEvent.saveDeviceId({required AppUser user}) =
      _SaveDeviceId;
  const factory PushNotificationEvent.messageReceived(
      {required Option<PushNotificationMessage> message}) = _MessageReceived;
}
