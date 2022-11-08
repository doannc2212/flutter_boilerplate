part of 'landing_bloc.dart';

@freezed
class LandingEvent with _$LandingEvent {
  const factory LandingEvent.authStarted() = _AuthStarted;
  const factory LandingEvent.loggedIn(String token) = _LoggedIn;
  const factory LandingEvent.logOut() = _LogOut;
  const factory LandingEvent.missingData() = _MissingData;
}
