// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Note? note});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$Initialized(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.note);

  @override
  final Note? note;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return initialized(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements NoteFormEvent {
  const factory Initialized(final Note? note) = _$Initialized;

  Note? get note;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BodyChangedCopyWith<$Res> {
  factory _$$BodyChangedCopyWith(
          _$BodyChanged value, $Res Function(_$BodyChanged) then) =
      __$$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$$BodyChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$BodyChangedCopyWith<$Res> {
  __$$BodyChangedCopyWithImpl(
      _$BodyChanged _value, $Res Function(_$BodyChanged) _then)
      : super(_value, (v) => _then(v as _$BodyChanged));

  @override
  _$BodyChanged get _value => super._value as _$BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_$BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyChanged implements BodyChanged {
  const _$BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyChanged &&
            const DeepCollectionEquality().equals(other.bodyStr, bodyStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bodyStr));

  @JsonKey(ignore: true)
  @override
  _$$BodyChangedCopyWith<_$BodyChanged> get copyWith =>
      __$$BodyChangedCopyWithImpl<_$BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return bodyChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class BodyChanged implements NoteFormEvent {
  const factory BodyChanged(final String bodyStr) = _$BodyChanged;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$$BodyChangedCopyWith<_$BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangedCopyWith<$Res> {
  factory _$$ColorChangedCopyWith(
          _$ColorChanged value, $Res Function(_$ColorChanged) then) =
      __$$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$ColorChangedCopyWith<$Res> {
  __$$ColorChangedCopyWithImpl(
      _$ColorChanged _value, $Res Function(_$ColorChanged) _then)
      : super(_value, (v) => _then(v as _$ColorChanged));

  @override
  _$ColorChanged get _value => super._value as _$ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChanged implements ColorChanged {
  const _$ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChanged &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      __$$ColorChangedCopyWithImpl<_$ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class ColorChanged implements NoteFormEvent {
  const factory ColorChanged(final Color color) = _$ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosChangedCopyWith<$Res> {
  factory _$$TodosChangedCopyWith(
          _$TodosChanged value, $Res Function(_$TodosChanged) then) =
      __$$TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitive> todos});
}

/// @nodoc
class __$$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$TodosChangedCopyWith<$Res> {
  __$$TodosChangedCopyWithImpl(
      _$TodosChanged _value, $Res Function(_$TodosChanged) _then)
      : super(_value, (v) => _then(v as _$TodosChanged));

  @override
  _$TodosChanged get _value => super._value as _$TodosChanged;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$TodosChanged(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$TodosChanged implements TodosChanged {
  const _$TodosChanged(this.todos);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosChanged &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$$TodosChangedCopyWith<_$TodosChanged> get copyWith =>
      __$$TodosChangedCopyWithImpl<_$TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return todosChanged?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) {
    return todosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class TodosChanged implements NoteFormEvent {
  const factory TodosChanged(final KtList<TodoItemPrimitive> todos) =
      _$TodosChanged;

  KtList<TodoItemPrimitive> get todos;
  @JsonKey(ignore: true)
  _$$TodosChangedCopyWith<_$TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodosChanged value) todosChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodosChanged value)? todosChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements NoteFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, (v) => _then(v as _$_NoteFormState));

  @override
  _$_NoteFormState get _value => super._value as _$_NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note note,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
