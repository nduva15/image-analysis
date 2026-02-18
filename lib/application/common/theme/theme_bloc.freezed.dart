// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, (v) => _then(v as _$_ChangeTheme));

  @override
  _$_ChangeTheme get _value => super._value as _$_ChangeTheme;
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme();

  @override
  String toString() {
    return 'ThemeEvent.changeTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeTheme,
  }) {
    return changeTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeTheme,
  }) {
    return changeTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ThemeEvent {
  const factory _ChangeTheme() = _$_ChangeTheme;
}

/// @nodoc
mixin _$ThemeState {
  ThemeMode get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) system,
    required TResult Function(ThemeMode mode) light,
    required TResult Function(ThemeMode mode) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$$_SystemCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_SystemCopyWith(_$_System value, $Res Function(_$_System) then) =
      __$$_SystemCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$_SystemCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_SystemCopyWith<$Res> {
  __$$_SystemCopyWithImpl(_$_System _value, $Res Function(_$_System) _then)
      : super(_value, (v) => _then(v as _$_System));

  @override
  _$_System get _value => super._value as _$_System;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$_System(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_System implements _System {
  const _$_System({this.mode = ThemeMode.system});

  @override
  @JsonKey()
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeState.system(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_System &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$_SystemCopyWith<_$_System> get copyWith =>
      __$$_SystemCopyWithImpl<_$_System>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) system,
    required TResult Function(ThemeMode mode) light,
    required TResult Function(ThemeMode mode) dark,
  }) {
    return system(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
  }) {
    return system?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }
}

abstract class _System implements ThemeState {
  const factory _System({final ThemeMode mode}) = _$_System;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SystemCopyWith<_$_System> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LightCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_LightCopyWith(_$_Light value, $Res Function(_$_Light) then) =
      __$$_LightCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$_LightCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_LightCopyWith<$Res> {
  __$$_LightCopyWithImpl(_$_Light _value, $Res Function(_$_Light) _then)
      : super(_value, (v) => _then(v as _$_Light));

  @override
  _$_Light get _value => super._value as _$_Light;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$_Light(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_Light implements _Light {
  const _$_Light({this.mode = ThemeMode.light});

  @override
  @JsonKey()
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeState.light(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Light &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$_LightCopyWith<_$_Light> get copyWith =>
      __$$_LightCopyWithImpl<_$_Light>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) system,
    required TResult Function(ThemeMode mode) light,
    required TResult Function(ThemeMode mode) dark,
  }) {
    return light(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
  }) {
    return light?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _Light implements ThemeState {
  const factory _Light({final ThemeMode mode}) = _$_Light;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LightCopyWith<_$_Light> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DarkCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_DarkCopyWith(_$_Dark value, $Res Function(_$_Dark) then) =
      __$$_DarkCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$_DarkCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_DarkCopyWith<$Res> {
  __$$_DarkCopyWithImpl(_$_Dark _value, $Res Function(_$_Dark) _then)
      : super(_value, (v) => _then(v as _$_Dark));

  @override
  _$_Dark get _value => super._value as _$_Dark;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$_Dark(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_Dark implements _Dark {
  const _$_Dark({this.mode = ThemeMode.dark});

  @override
  @JsonKey()
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeState.dark(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dark &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$_DarkCopyWith<_$_Dark> get copyWith =>
      __$$_DarkCopyWithImpl<_$_Dark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) system,
    required TResult Function(ThemeMode mode) light,
    required TResult Function(ThemeMode mode) dark,
  }) {
    return dark(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
  }) {
    return dark?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? system,
    TResult Function(ThemeMode mode)? light,
    TResult Function(ThemeMode mode)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_System value) system,
    required TResult Function(_Light value) light,
    required TResult Function(_Dark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_System value)? system,
    TResult Function(_Light value)? light,
    TResult Function(_Dark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _Dark implements ThemeState {
  const factory _Dark({final ThemeMode mode}) = _$_Dark;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DarkCopyWith<_$_Dark> get copyWith => throw _privateConstructorUsedError;
}
