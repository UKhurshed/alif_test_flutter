import 'package:alif_test/core/utils/result/result_util.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.dart';

part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit({
    required UsersRepository usersRepository,
  })  : _usersRepository = usersRepository,
        super(UsersState.initial());

  final UsersRepository _usersRepository;

  Future<void> getUsers() async {
    produceResult(
      callback: () async {
        final result = await _usersRepository.getUsers();
        return result;
      },
      emitter: (value) => emit(state.copyWith(usersResult: value)),
    );
  }
}
