part of 'landing_bloc.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState.initial() = _Initial;
  const factory LandingState.loading() = _Loading;
  const factory LandingState.authenticated() = _Authenticated;
  const factory LandingState.unauthenticated() = _Unauthenticated;
  const factory LandingState.internetUnAvailable() = _InternetUnAvailable;
}
