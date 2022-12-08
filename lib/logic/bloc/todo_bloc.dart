import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/Task.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  List<TaskModel> taskList = [];
  TodoBloc() : super(const TodoState()) {
    on<TaskAddedEvent>(_onTaskAdded);
  }

  void _onTaskAdded(TaskAddedEvent addedEvent, Emitter<TodoState> emit) {
    TaskModel taskModel = TaskModel("Task no. ${taskList.length}",
        "This is the task detail no. ${taskList.length}");
    taskList.add(taskModel);
    emit(TodoState(taskList: taskList));
  }
}
