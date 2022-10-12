import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class CurrentUser with _$CurrentUser {
  const factory CurrentUser({required UniqueId id}) = _CurrentUser;
}
