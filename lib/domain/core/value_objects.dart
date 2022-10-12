// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import 'failures.dart';
// part 'value_objects.freezed.dart';
//
// @freezed
// class ValueObject<T> with _$ValueObject<T> {
//   const factory ValueObject(Either<ValueFailure<T>, T> value) = _ValueObject;
// }

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_app/domain/core/errors.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (_) => right(unit),
    );
  }

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}
