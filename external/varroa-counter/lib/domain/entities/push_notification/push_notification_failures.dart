import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config/errors.dart';

part 'push_notification_failures.freezed.dart';

@freezed
class PushNotificationFailure with _$PushNotificationFailure {
  const factory PushNotificationFailure.serverError({
    @Default(common_error_serverError) String code,
  }) = _ServerError;
  const factory PushNotificationFailure.permissionDenied({
    @Default(push_error_permissionDenied) String code,
  }) = _PermissionDenied;
}
