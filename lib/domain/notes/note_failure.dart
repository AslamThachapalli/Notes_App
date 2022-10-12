import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';

@freezed
class NoteFailure with _$NoteFailure {
  const factory NoteFailure.unexpected() = Unexpected;
  const factory NoteFailure.insufficientPermission() = InsufficientPermission;
  const factory NoteFailure.unableToUpdate() = UnableToUpdate;
}
