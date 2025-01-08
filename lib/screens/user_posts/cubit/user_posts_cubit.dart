import 'package:alif_test/core/utils/result/result_util.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_posts_state.dart';

part 'user_posts_cubit.freezed.dart';

class UserPostsCubit extends Cubit<UserPostsState> {
  UserPostsCubit({required UsersRepository userRepository})
      : _usersRepository = userRepository,
        super(UserPostsState.initial());

  final UsersRepository _usersRepository;

  Future<void> getUserPosts({required int userID}) async {
    produceResult(
      callback: () async {
        final result = await _usersRepository.getUserPosts(userID: userID);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(userPostsResult: value),
      ),
    );
  }
}
