import 'package:uuid/uuid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _uuid = Uuid();

class TodosNotifier extends StateNotifier<List<TodoModel>> {
  TodosNotifier([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);
  static const _initialState = [];

  void addTodo(String text) {
    state = [
      ...state,
      TodoModel(
        text,
        _uuid.v4(),
        false,
      ),
    ];
  }

  void toggleTodo(String todoId) {
    state = [
      for (final todo in state)
        if (todo.id == todoId)
          TodoModel(todo.text, todoId, !todo.isChecked)
        else
          todo
    ];
  }

  void editTodo(String todoId, String todoText) {
    state = [
      for (final todo in state)
        if (todoId == todo.id)
          TodoModel(todoText, todoId, todo.isChecked)
        else
          todo
    ];
  }

  void removeTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}

class TodoModel {
  final String text;
  final String id;
  final bool isChecked;

  const TodoModel(this.text, this.id, this.isChecked);
}
