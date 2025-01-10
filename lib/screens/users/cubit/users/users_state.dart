part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const UsersState._();

  const factory UsersState._internal({
    required Result<List<UserItem>> usersResult,
  }) = _UsersState;

  factory UsersState.initial() => const UsersState._internal(
        usersResult: Initial(),
      );
}
