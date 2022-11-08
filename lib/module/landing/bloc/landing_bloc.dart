import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/global.dart';
import 'package:flutter_boilerplate/common/network/network.dart';
import 'package:flutter_boilerplate/common/store/store.dart';
import 'package:flutter_boilerplate/common/util/jwt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_bloc.freezed.dart';
part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(const _Initial()) {
    on<_AuthStarted>(_onAuthStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LogOut>(_onLogOut);
  }

  bool isLoggedIn = false;

  Future<void> _onLogOut(
    _LogOut event,
    Emitter<LandingState> emit,
  ) async {
    emit(const _Loading());
    try {
      final cache = HiveStore();
      await cache.deleteToken();
      isLoggedIn = false;
      Global.accessToken = null;
      emit(const _Unauthenticated());
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<LandingState> emit,
  ) async {
    emit(const _Loading());
    try {
      final token = event.token;
      final cache = HiveStore();
      final isValidate = await validateJWT(token);

      if (isValidate) {
        await cache.persistToken(token);
        emit(const _Authenticated());
        isLoggedIn = true;
        Global.accessToken = token;
        header['Authorization'] = 'Bearer $token';
      } else {
        await cache.deleteToken();
        emit(const _Unauthenticated());
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      emit(const _Unauthenticated());
    }
  }

  Future<void> _onAuthStarted(
    _AuthStarted event,
    Emitter<LandingState> emit,
  ) async {
    emit(const _Loading());

    // final hasInternet = await hasConnectivity();
    // if (hasInternet) {
    try {
      final cache = HiveStore();
      final hasToken = await cache.hasToken();

      if (hasToken) {
        final token = await cache.fetchToken();
        debugPrint(token);

        final isValidate = await validateJWT(token!);
        if (isValidate) {
          emit(const _Authenticated());
          isLoggedIn = true;
        } else {
          await cache.deleteToken();
          emit(const _Unauthenticated());
        }
      } else {
        emit(const _Unauthenticated());
      }
    } on Exception {
      debugPrint('Landing Bloc: Something gone wrong');
    }
  }
}
