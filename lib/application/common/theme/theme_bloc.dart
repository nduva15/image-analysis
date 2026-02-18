import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const _System()) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        changeTheme: (e) => emit(
          state.map(
              system: (_) =>
                  SchedulerBinding.instance.window.platformBrightness ==
                          Brightness.dark
                      ? const _Light()
                      : const _Dark(),
              light: (_) => const _Dark(),
              dark: (_) => const _Light()),
        ),
      ),
    );
  }
}
