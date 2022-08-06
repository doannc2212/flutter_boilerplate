part of 'home_bloc.dart';

enum TodoStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _InitialState;

  const factory HomeState.loading() = _LoadingState;

  const factory HomeState.success({
    required List<Todo> todos,
  }) = _SuccessState;

  const factory HomeState.failure(String message) = _FailureState;
}
