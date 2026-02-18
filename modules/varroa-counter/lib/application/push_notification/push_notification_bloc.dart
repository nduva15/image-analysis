import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waggle_auth/domain/entities/auth/app_user.dart';
import '../../domain/entities/push_notification/push_notification_message.dart';
import '../../domain/repositories/push_notification/i_push_notification_repository.dart';
import 'package:injectable/injectable.dart';

part 'push_notification_event.dart';
part 'push_notification_state.dart';
part 'push_notification_bloc.freezed.dart';

@injectable
class PushNotificationBloc
    extends Bloc<PushNotificationEvent, PushNotificationState> {
  final IPushNotificationRepository _push;

  StreamSubscription<Option<PushNotificationMessage>>? _forgroundMessages$;
  StreamSubscription<Option<PushNotificationMessage>>? _backgroundMessages$;

  PushNotificationBloc(this._push) : super(const _Initial()) {
    on<PushNotificationEvent>(
      (event, emit) => event.map(
        initialize: (e) async {
          final failSuccess = await _push.initialize();
          emit(failSuccess.fold(
            (_) => const _Denied(),
            (_) => const _Permitted(),
          ));
        },
        messageReceived: (e) => emit(
          e.message.match(
            (message) {
              _push.showNotification(message: message);
              return _Permitted(message: message);
            },
            () => const _Permitted(),
          ),
        ),
        onBackground: (e) async {
          await _backgroundMessages$?.cancel();
          _backgroundMessages$ = _push
              .onBackground()
              .listen((e) => add(_MessageReceived(message: e)));
        },
        onForground: (e) async {
          await _forgroundMessages$?.cancel();
          _forgroundMessages$ = _push
              .onForground()
              .listen((e) => add(_MessageReceived(message: e)));
        },
        saveDeviceId: (e) async {
          await _push.saveToken(user: e.user);
        },
      ),
    );
  }
  @override
  Future<void> close() async {
    //cancel streams
    await _forgroundMessages$?.cancel();
    await _backgroundMessages$?.cancel();
    super.close();
  }
}
