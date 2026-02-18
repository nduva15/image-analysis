part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.system({
    @Default(ThemeMode.system) ThemeMode mode,
  }) = _System;
  const factory ThemeState.light({
    @Default(ThemeMode.light) ThemeMode mode,
  }) = _Light;
  const factory ThemeState.dark({
    @Default(ThemeMode.dark) ThemeMode mode,
  }) = _Dark;
}
