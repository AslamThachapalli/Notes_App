import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_app/domain/notes/i_note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter/material.dart';

import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    StreamSubscription<Either<NoteFailure, KtList<Note>>>?
        _noteStreamSubscription;

    bool _isInitial = true;

    on<NoteWatcherEvent>(
      (event, emit) {
        event.map(
          watchAllStarted: (e) async {
            emit(const NoteWatcherState.loadInProgress());
            if (_isInitial) {
              _noteStreamSubscription = _noteRepository.watchAll().listen(
                    (failureOrNotes) =>
                        add(NoteWatcherEvent.notesReceived(failureOrNotes)),
                  );
              _isInitial = false;
            }
            await _noteStreamSubscription!.cancel();
            _noteStreamSubscription = _noteRepository.watchAll().listen(
                  (failureOrNotes) =>
                      add(NoteWatcherEvent.notesReceived(failureOrNotes)),
                );
          },
          watchUncompletedStarted: (e) async {
            emit(const NoteWatcherState.loadInProgress());
            await _noteStreamSubscription!.cancel();
            _noteStreamSubscription = _noteRepository.watchUncompleted().listen(
                  (failureOrNotes) =>
                      add(NoteWatcherEvent.notesReceived(failureOrNotes)),
                );
          },
          notesReceived: (e) {
            emit(e.failureOrNotes.fold(
              (f) => NoteWatcherState.loadFailure(f),
              (notes) => NoteWatcherState.loadSuccess(notes),
            ));
          },
        );
      },
    );
  }
}
