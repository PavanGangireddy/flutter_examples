import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/notifiers/todo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final todoListProvider = StateNotifierProvider<TodosNotifier, List<TodoModel>>(
    (ref) => TodosNotifier());

enum TodoListFilters { all, active, completed }

// TODO: learn how to call getTodoListFilter() here
final todosFilterStateProvider =
    StateProvider<TodoListFilters>((_) => TodoListFilters.all);

final filteredTodos = Provider<List<TodoModel>>((ref) {
  final todos = ref.watch(todoListProvider);
  final todosFilter = ref.watch(todosFilterStateProvider);
  switch (todosFilter) {
    case TodoListFilters.active:
      return todos.where((todo) => !todo.isChecked).toList();
    case TodoListFilters.completed:
      return todos.where((todo) => todo.isChecked).toList();
    default:
      return todos;
  }
});

const String prefTodoFilterKey = 'todoFilter';

Future<TodoListFilters> getTodoListFilter() async {
  final prefs = await SharedPreferences.getInstance();
  TodoListFilters initialFilterKey = TodoListFilters.all;
  if (prefs.containsKey(prefTodoFilterKey)) {
    final storedFilterKey = prefs.getString(prefTodoFilterKey);
    if (storedFilterKey != null) {
      initialFilterKey = TodoListFilters.values
          .firstWhere((e) => e.toString() == storedFilterKey);
      storedFilterKey;
    } else {
      initialFilterKey = TodoListFilters.all;
    }
  }
  return initialFilterKey;
}

void saveTodoListFilter(newFilterState) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(prefTodoFilterKey, newFilterState);
}

final saveTodoListFilterProvider = Provider((ref) {
  ref.listen<TodoListFilters>(todosFilterStateProvider, (_, newFilterState) {
    saveTodoListFilter(newFilterState);
  });
});

class TodosApp extends StatelessWidget {
  const TodosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 50),
                  Title(),
                  TextInput(),
                  Toolbar(),
                  TodoList()
                ])));
  }
}

class TextInput extends HookConsumerWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newTodoController = useTextEditingController();
    return SizedBox(
        height: 100,
        child: TextField(
          controller: newTodoController,
          decoration: const InputDecoration(
            labelText: 'What needs to be done?',
          ),
          onSubmitted: (value) {
            ref.watch(todoListProvider.notifier).addTodo(value);
            newTodoController.clear();
          },
        ));
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        "TodosList",
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
}

class TodoList extends HookConsumerWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(filteredTodos);
    return Flexible(
        child: ListView(children: [
      for (var i = 0; i < todos.length; i++) ...[
        if (i > 0) const Divider(height: 0),
        Dismissible(
          key: ValueKey(todos[i].id),
          onDismissed: (_) {
            ref.watch(todoListProvider.notifier).removeTodo(todos[i].id);
          },
          child: ProviderScope(
            overrides: [
              currentTodo.overrideWithValue(todos[i]),
            ],
            child: const Flexible(child: TodoItem()),
          ),
        )
      ],
    ]));
  }
}

// 1. Declare a ScopedProvider
final currentTodo = Provider<TodoModel>((_) => throw UnimplementedError());

class TodoItem extends HookConsumerWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(currentTodo);
    final itemFocusNode = useFocusNode();
    useListenable(itemFocusNode);
    final isFocused = itemFocusNode.hasFocus;
    final textEditingController = useTextEditingController();

    final textEditingFocusNode = useFocusNode();

    return Material(
        child: Focus(
            focusNode: itemFocusNode,
            onFocusChange: (focused) {
              if (focused) {
                textEditingController.text = todo.text;
              } else {
                ref
                    .watch(todoListProvider.notifier)
                    .editTodo(todo.id, textEditingController.text);
              }
            },
            child: ListTile(
                onTap: () {
                  itemFocusNode.requestFocus();
                  textEditingFocusNode.requestFocus();
                },
                leading: Checkbox(
                    onChanged: (value) => (ref
                        .watch(todoListProvider.notifier)
                        .toggleTodo(todo.id)),
                    value: todo.isChecked),
                title: isFocused
                    ? TextField(
                        focusNode: textEditingFocusNode,
                        controller: textEditingController)
                    : Text(todo.text))));
  }
}

final uncompletedTodosCount = Provider<int>((ref) {
  return ref
      .watch(todoListProvider)
      .where((todo) => !todo.isChecked == true)
      .length;
});

class Toolbar extends HookConsumerWidget {
  const Toolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(todosFilterStateProvider);

    Color? _textColorFor(TodoListFilters value) {
      return filter == value ? Colors.blue : Colors.black;
    }

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: Text(
          '${ref.watch(uncompletedTodosCount).toString()} items left',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                ref.watch(todosFilterStateProvider.notifier).state =
                    TodoListFilters.all;
              },
              child: Text(
                "All",
                style: TextStyle(color: _textColorFor(TodoListFilters.all)),
              ),
            )),
        GestureDetector(
          onTap: () {
            ref.watch(todosFilterStateProvider.notifier).state =
                TodoListFilters.active;
          },
          child: Text(
            "Active",
            style: TextStyle(color: _textColorFor(TodoListFilters.active)),
          ),
        ),
        GestureDetector(
          onTap: () {
            ref.watch(todosFilterStateProvider.notifier).state =
                TodoListFilters.completed;
          },
          child: Text(
            "Completed",
            style: TextStyle(color: _textColorFor(TodoListFilters.completed)),
          ),
        )
      ]))
    ]);
  }
}
