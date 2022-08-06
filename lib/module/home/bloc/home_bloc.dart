import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/data/todo_api/model/model.dart';
import 'package:flutter_boilerplate/repository/todo_repository/todo_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const _InitialState()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () => _onStarted(emit),
        loading: () => _onLoading(emit),
      );
    });
  }
  final TodoRepository _todoRepository;

  Future<void> _onStarted(Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    await Future.delayed(const Duration(seconds: 1), () {
      add(const HomeEvent.loading());
    });
  }

  Future<void> _onLoading(Emitter<HomeState> emit) async {
    final todos = await _todoRepository.getTodos();

    emit(
      todos.when(
        success: (value) {
          return HomeState.success(todos: List.from(value));
        },
        error: (exception) {
          return HomeState.failure(
            exception.when(
              error: (message) => message ?? 'error',
              unauthorized: () => 'Unauthorized',
              unknown: () => 'Unknown',
              notFound: () => 'Not found',
            ),
          );
        },
      ),
    );
  }
}
