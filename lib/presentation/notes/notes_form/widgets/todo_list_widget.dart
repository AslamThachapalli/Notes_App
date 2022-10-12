import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

import '../../../../application/notes/note_form/note_form_bloc.dart';
import '../../../../domain/notes/value_objects.dart';
import '../misc/todo_item_presentation_classes.dart';
import '../misc/build_context_x.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                duration: const Duration(seconds: 5),
                content: const Text(
                  'Want longer lists? Activate premium 😍',
                  style: TextStyle(fontSize: 13),
                ),
                action: SnackBarAction(
                  label: 'BUY NOW',
                  onPressed: () {},
                  textColor: Colors.yellow,
                )),
          );
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ReorderableListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            onReorder: (oldIndex, newIndex) {
              List<TodoItemPrimitive> todoList = context.formTodos.asList();
              final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

              final todoItem = todoList.removeAt(oldIndex);
              todoList.insert(index, todoItem);
              context.formTodos = todoList.toImmutableList();
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
            shrinkWrap: true,
            itemCount: formTodos.value.size,
            itemBuilder: (context, i) {
              return TodoTile(
                index: i,
                key: ValueKey(context.formTodos[i].id),
              );
            },
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;

  const TodoTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos.getOrElse(
      index,
      (_) => TodoItemPrimitive.empty(),
    );
    final textEditingController = useTextEditingController(text: todo.name);
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              context.formTodos = context.formTodos.minusElement(todo);
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
            icon: Icons.delete,
            backgroundColor: Colors.red,
            label: 'Delete',
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                (listTodo) => listTodo == todo ? todo.copyWith(done: value!) : listTodo,
              );
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
          ),
          title: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              hintText: 'Todo',
              counterText: '',
              border: InputBorder.none,
            ),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                (listTodo) => listTodo == todo ? todo.copyWith(name: value) : listTodo,
              );
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
            validator: (_) => BlocProvider.of<NoteFormBloc>(context).state.note.todos.value.fold(
                  (f) => null,
                  (todoList) => todoList[index].name.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          exceedingLength: (_) => 'Too long',
                          multiLine: (_) => 'Has to be in a single line',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
          ),
          trailing: const Icon(Icons.list),
        ),
      ),
    );
  }
}
