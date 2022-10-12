import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_app/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_app/domain/notes/note_failure.dart';
import 'package:firebase_ddd_app/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/notes/note.dart';
import '../../../presentation/notes/notes_form/misc/todo_item_presentation_classes.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<Initialized>(
      (event, emit) => event.note == null
          ? emit(state)
          : emit(
              state.copyWith(
                note: event.note!,
                isEditing: true,
              ),
            ),
    );
    on<BodyChanged>(
      (event, emit) => emit(
        state.copyWith(
          note: state.note.copyWith(body: NoteBody(event.bodyStr)),
          saveFailureOrSuccessOption: none(),
        ),
      ),
    );
    on<ColorChanged>(
      (event, emit) => emit(
        state.copyWith(
          note: state.note.copyWith(color: NoteColor(event.color)),
          saveFailureOrSuccessOption: none(),
        ),
      ),
    );
    on<TodosChanged>(
      (event, emit) => emit(
        state.copyWith(
          note: state.note.copyWith(
            todos: List3(
              event.todos.map((primitive) => primitive.toDomain()),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        ),
      ),
    );
    on<Saved>(
      (event, emit) async {
        Either<NoteFailure, Unit>? failureOrSuccess;
        emit(state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        ));

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
        }

        emit(state.copyWith(
          showErrorMessages: true,
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
