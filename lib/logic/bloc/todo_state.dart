part of 'todo_bloc.dart';

class TodoState extends Equatable {
  final List<TaskModel> taskList;
  const TodoState({
    this.taskList = const <TaskModel>[],
  });

  @override
  List<Object> get props => [taskList];
}
