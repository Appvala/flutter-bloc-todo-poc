import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/todo_bloc.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: () {
        context.read<TodoBloc>().add(TaskAddedEvent());
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
