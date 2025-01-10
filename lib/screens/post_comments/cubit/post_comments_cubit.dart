import 'dart:async';

import 'package:alif_test/core/utils/result/result_util.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comments_state.dart';

part 'post_comments_cubit.freezed.dart';

class PostCommentsCubit extends Cubit<PostCommentsState> {
  PostCommentsCubit({
    required PostsRepository postsRepository,
    required CommentsRepository commentsRepository,
    required int postID,
  })  : _postsRepository = postsRepository,
        _commentsRepository = commentsRepository,
        _postID = postID,
        super(PostCommentsState.initial()) {
    _postCommentsSubscription =
        _postsRepository.watchComments(postID: postID).listen((value) {
      emit(state.copyWith(commentsResult: Success(data: value)));
    });
  }

  final PostsRepository _postsRepository;
  final CommentsRepository _commentsRepository;
  late final StreamSubscription<List<CommentItem>> _postCommentsSubscription;
  final int _postID;

  Future<void> getPostComments() async {
    produceResult(
      callback: () async {
        final result =
            await _postsRepository.getCommentsByPostID(postID: _postID);
        return result;
      },
      emitter: (value) => emit(state.copyWith(commentsResult: value)),
    );
  }

  Future<void> createPostComment({
    required CreatePostComment commentItem,
    required int postID,
  }) async {
    produceResult(
      callback: () async {
        final result = await _postsRepository.createPostComment(
          createPostComment: commentItem,
          postID: postID,
        );
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(createPostCommentResult: value),
      ),
    );
  }

  Future<void> updatePostComment({
    required CreatePostComment commentItem,
    required int commentID,
  }) async {
    produceResult(
      callback: () async {
        final result = await _commentsRepository.updatePostComment(
            commentID: commentID, updatePostComment: commentItem);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(updatePostCommentResult: value),
      ),
    );
  }

  Future<void> deletePostComment({
    required int commentID,
  }) async {
    produceResult(
      callback: () async {
        final result =
            await _commentsRepository.deletePostComment(commentID: commentID);
        return result;
      },
      emitter: (value) => emit(
        state.copyWith(deletePostCommentResult: value),
      ),
    );
  }

  @override
  Future<void> close() {
    _postCommentsSubscription.cancel();
    return super.close();
  }
}
