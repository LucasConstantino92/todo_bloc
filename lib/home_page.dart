import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/bloc/todo_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(CupertinoIcons.add),
      ),
      appBar: AppBar(
        title: Text(
          'Todo App',
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
          if (state.status == TodoStatus.success) {
            return Container();
          } else if (state.status == TodoStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
