// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PushNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationEventCopyWith<$Res> {
  factory $PushNotificationEventCopyWith(PushNotificationEvent value,
          $Res Function(PushNotificationEvent) then) =
      _$PushNotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PushNotificationEventCopyWithImpl<$Res>
    implements $PushNotificationEventCopyWith<$Res> {
  _$PushNotificationEventCopyWithImpl(this._value, this._then);

  final PushNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(PushNotificationEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$PushNotificationEventCopyWithImpl<$Res>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, (v) => _then(v as _$_Initialize));

  @override
  _$_Initialize get _value => super._value as _$_Initialize;
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'PushNotificationEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements PushNotificationEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_OnForgroundCopyWith<$Res> {
  factory _$$_OnForgroundCopyWith(
          _$_OnForground value, $Res Function(_$_OnForground) then) =
      __$$_OnForgroundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnForgroundCopyWithImpl<$Res>
    extends _$PushNotificationEventCopyWithImpl<$Res>
    implements _$$_OnForgroundCopyWith<$Res> {
  __$$_OnForgroundCopyWithImpl(
      _$_OnForground _value, $Res Function(_$_OnForground) _then)
      : super(_value, (v) => _then(v as _$_OnForground));

  @override
  _$_OnForground get _value => super._value as _$_OnForground;
}

/// @nodoc

class _$_OnForground implements _OnForground {
  const _$_OnForground();

  @override
  String toString() {
    return 'PushNotificationEvent.onForground()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnForground);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) {
    return onForground();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) {
    return onForground?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) {
    if (onForground != null) {
      return onForground();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return onForground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) {
    return onForground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (onForground != null) {
      return onForground(this);
    }
    return orElse();
  }
}

abstract class _OnForground implements PushNotificationEvent {
  const factory _OnForground() = _$_OnForground;
}

/// @nodoc
abstract class _$$_OnBackgroundCopyWith<$Res> {
  factory _$$_OnBackgroundCopyWith(
          _$_OnBackground value, $Res Function(_$_OnBackground) then) =
      __$$_OnBackgroundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnBackgroundCopyWithImpl<$Res>
    extends _$PushNotificationEventCopyWithImpl<$Res>
    implements _$$_OnBackgroundCopyWith<$Res> {
  __$$_OnBackgroundCopyWithImpl(
      _$_OnBackground _value, $Res Function(_$_OnBackground) _then)
      : super(_value, (v) => _then(v as _$_OnBackground));

  @override
  _$_OnBackground get _value => super._value as _$_OnBackground;
}

/// @nodoc

class _$_OnBackground implements _OnBackground {
  const _$_OnBackground();

  @override
  String toString() {
    return 'PushNotificationEvent.onBackground()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnBackground);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) {
    return onBackground();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) {
    return onBackground?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) {
    if (onBackground != null) {
      return onBackground();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return onBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) {
    return onBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (onBackground != null) {
      return onBackground(this);
    }
    return orElse();
  }
}

abstract class _OnBackground implements PushNotificationEvent {
  const factory _OnBackground() = _$_OnBackground;
}

/// @nodoc
abstract class _$$_SaveDeviceIdCopyWith<$Res> {
  factory _$$_SaveDeviceIdCopyWith(
          _$_SaveDeviceId value, $Res Function(_$_SaveDeviceId) then) =
      __$$_SaveDeviceIdCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class __$$_SaveDeviceIdCopyWithImpl<$Res>
    extends _$PushNotificationEventCopyWithImpl<$Res>
    implements _$$_SaveDeviceIdCopyWith<$Res> {
  __$$_SaveDeviceIdCopyWithImpl(
      _$_SaveDeviceId _value, $Res Function(_$_SaveDeviceId) _then)
      : super(_value, (v) => _then(v as _$_SaveDeviceId));

  @override
  _$_SaveDeviceId get _value => super._value as _$_SaveDeviceId;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_SaveDeviceId(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_SaveDeviceId implements _SaveDeviceId {
  const _$_SaveDeviceId({required this.user});

  @override
  final AppUser user;

  @override
  String toString() {
    return 'PushNotificationEvent.saveDeviceId(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveDeviceId &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_SaveDeviceIdCopyWith<_$_SaveDeviceId> get copyWith =>
      __$$_SaveDeviceIdCopyWithImpl<_$_SaveDeviceId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) {
    return saveDeviceId(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) {
    return saveDeviceId?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) {
    if (saveDeviceId != null) {
      return saveDeviceId(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return saveDeviceId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) {
    return saveDeviceId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (saveDeviceId != null) {
      return saveDeviceId(this);
    }
    return orElse();
  }
}

abstract class _SaveDeviceId implements PushNotificationEvent {
  const factory _SaveDeviceId({required final AppUser user}) = _$_SaveDeviceId;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SaveDeviceIdCopyWith<_$_SaveDeviceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageReceivedCopyWith<$Res> {
  factory _$$_MessageReceivedCopyWith(
          _$_MessageReceived value, $Res Function(_$_MessageReceived) then) =
      __$$_MessageReceivedCopyWithImpl<$Res>;
  $Res call({Option<PushNotificationMessage> message});
}

/// @nodoc
class __$$_MessageReceivedCopyWithImpl<$Res>
    extends _$PushNotificationEventCopyWithImpl<$Res>
    implements _$$_MessageReceivedCopyWith<$Res> {
  __$$_MessageReceivedCopyWithImpl(
      _$_MessageReceived _value, $Res Function(_$_MessageReceived) _then)
      : super(_value, (v) => _then(v as _$_MessageReceived));

  @override
  _$_MessageReceived get _value => super._value as _$_MessageReceived;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MessageReceived(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Option<PushNotificationMessage>,
    ));
  }
}

/// @nodoc

class _$_MessageReceived implements _MessageReceived {
  const _$_MessageReceived({required this.message});

  @override
  final Option<PushNotificationMessage> message;

  @override
  String toString() {
    return 'PushNotificationEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageReceived &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MessageReceivedCopyWith<_$_MessageReceived> get copyWith =>
      __$$_MessageReceivedCopyWithImpl<_$_MessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onForground,
    required TResult Function() onBackground,
    required TResult Function(AppUser user) saveDeviceId,
    required TResult Function(Option<PushNotificationMessage> message)
        messageReceived,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onForground,
    TResult Function()? onBackground,
    TResult Function(AppUser user)? saveDeviceId,
    TResult Function(Option<PushNotificationMessage> message)? messageReceived,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnForground value) onForground,
    required TResult Function(_OnBackground value) onBackground,
    required TResult Function(_SaveDeviceId value) saveDeviceId,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnForground value)? onForground,
    TResult Function(_OnBackground value)? onBackground,
    TResult Function(_SaveDeviceId value)? saveDeviceId,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements PushNotificationEvent {
  const factory _MessageReceived(
          {required final Option<PushNotificationMessage> message}) =
      _$_MessageReceived;

  Option<PushNotificationMessage> get message =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MessageReceivedCopyWith<_$_MessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PushNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PushNotificationMessage? message) permitted,
    required TResult Function() denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Permitted value) permitted,
    required TResult Function(_Denied value) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationStateCopyWith<$Res> {
  factory $PushNotificationStateCopyWith(PushNotificationState value,
          $Res Function(PushNotificationState) then) =
      _$PushNotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PushNotificationStateCopyWithImpl<$Res>
    implements $PushNotificationStateCopyWith<$Res> {
  _$PushNotificationStateCopyWithImpl(this._value, this._then);

  final PushNotificationState _value;
  // ignore: unused_field
  final $Res Function(PushNotificationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PushNotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PushNotificationMessage? message) permitted,
    required TResult Function() denied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Permitted value) permitted,
    required TResult Function(_Denied value) denied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PushNotificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PermittedCopyWith<$Res> {
  factory _$$_PermittedCopyWith(
          _$_Permitted value, $Res Function(_$_Permitted) then) =
      __$$_PermittedCopyWithImpl<$Res>;
  $Res call({PushNotificationMessage? message});
}

/// @nodoc
class __$$_PermittedCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res>
    implements _$$_PermittedCopyWith<$Res> {
  __$$_PermittedCopyWithImpl(
      _$_Permitted _value, $Res Function(_$_Permitted) _then)
      : super(_value, (v) => _then(v as _$_Permitted));

  @override
  _$_Permitted get _value => super._value as _$_Permitted;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Permitted(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushNotificationMessage?,
    ));
  }
}

/// @nodoc

class _$_Permitted implements _Permitted {
  const _$_Permitted({this.message});

  @override
  final PushNotificationMessage? message;

  @override
  String toString() {
    return 'PushNotificationState.permitted(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permitted &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_PermittedCopyWith<_$_Permitted> get copyWith =>
      __$$_PermittedCopyWithImpl<_$_Permitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PushNotificationMessage? message) permitted,
    required TResult Function() denied,
  }) {
    return permitted(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
  }) {
    return permitted?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (permitted != null) {
      return permitted(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Permitted value) permitted,
    required TResult Function(_Denied value) denied,
  }) {
    return permitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
  }) {
    return permitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (permitted != null) {
      return permitted(this);
    }
    return orElse();
  }
}

abstract class _Permitted implements PushNotificationState {
  const factory _Permitted({final PushNotificationMessage? message}) =
      _$_Permitted;

  PushNotificationMessage? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PermittedCopyWith<_$_Permitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeniedCopyWith<$Res> {
  factory _$$_DeniedCopyWith(_$_Denied value, $Res Function(_$_Denied) then) =
      __$$_DeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeniedCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res>
    implements _$$_DeniedCopyWith<$Res> {
  __$$_DeniedCopyWithImpl(_$_Denied _value, $Res Function(_$_Denied) _then)
      : super(_value, (v) => _then(v as _$_Denied));

  @override
  _$_Denied get _value => super._value as _$_Denied;
}

/// @nodoc

class _$_Denied implements _Denied {
  const _$_Denied();

  @override
  String toString() {
    return 'PushNotificationState.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Denied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PushNotificationMessage? message) permitted,
    required TResult Function() denied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PushNotificationMessage? message)? permitted,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Permitted value) permitted,
    required TResult Function(_Denied value) denied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Permitted value)? permitted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements PushNotificationState {
  const factory _Denied() = _$_Denied;
}
