import 'dart:async';

import 'package:alif_test/core/utils/result/result_util.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_posts_state.dart';

part 'user_posts_cubit.freezed.dart';

class UserPostsCubit extends Cubit<UserPostsState> {
  UserPostsCubit({
    required UsersRepository userRepository,
    required PostsRepository postsRepository,
    required int userID,
  })  : _usersRepository = userRepository,
        _postsRepository = postsRepository,
        _userID = userID,
        super(UserPostsState.initial()) {
    _userPostsSubscription =
        _usersRepository.watchUserPosts(userID: userID).listen(
      (value) {
        emit(state.copyWith(userPostsResult: Success(data: value)));
      },
    );
  }

  final UsersRepository _usersRepository;
  final PostsRepository _postsRepository;
  late final StreamSubscription<List<UserPost>> _userPostsSubscription;
  final int _userID;

  Future<void> getUserPosts() async {
    produceResult(
      callback: () async {
        final result = await _usersRepository.getUserPosts(userID: _userID);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(userPostsResult: value),
      ),
    );
  }

  Future<void> createUserPost({
    required CreateUserPost userPost,
  }) async {
    produceResult(
      callback: () async {
        final result =
            await _postsRepository.createUserPost(createUserPost: userPost);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(createUserPostResult: value),
      ),
    );
  }

  Future<void> updateUserPost({
    required UserPost userPost,
    required int postID,
  }) async {
    produceResult(
      callback: () async {
        final result = await _postsRepository.updateUserPost(
          updateUserPost: userPost,
          postID: postID,
        );
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(createUserPostResult: value),
      ),
    );
  }

  Future<void> deleteUserPost({
    required int postID,
  }) async {
    produceResult(
      callback: () async {
        final result = await _postsRepository.deleteUserPost(postID: postID);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(deleteUserPostResult: value),
      ),
    );
  }

  @override
  Future<void> close() {
    _userPostsSubscription.cancel();
    return super.close();
  }
}
