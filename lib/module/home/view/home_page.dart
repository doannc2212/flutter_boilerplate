import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/l10n/l10n.dart';
import 'package:flutter_boilerplate/module/home/bloc/home_bloc.dart';
import 'package:flutter_boilerplate/repository/todo_repository/todo_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        todoRepository: getIt.get<TodoRepository>(),
      )..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todos',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (todos) => Center(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: const FlutterLogo(),
                              title: Text(todos[index].title),
                            ),
                          );
                        },
                        itemCount: todos.length,
                      ),
                    ),
                    failure: (message) => Center(
                      child: Text(message),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('homeView_openCounterPage_floatingActionButton'),
        onPressed: () {
          Navigator.pushNamed(
            context,
            RouteName.counter,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
