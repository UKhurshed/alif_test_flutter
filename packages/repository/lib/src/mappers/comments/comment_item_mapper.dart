import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';

extension CommentItemMapper on List<CommentResponse> {
  List<CommentItem> get asDomainEntity => List.generate(
        length,
        (index) => CommentItem(
          postID: this[index].postID,
          id: this[index].id,
          name: this[index].name,
          email: this[index].email,
          body: this[index].body,
        ),
      );
}

extension CreateCommentItem on CreateCommentResponse {
  CommentItem get asDomainEntity => CommentItem(
        postID: int.parse(postID),
        id: id,
        name: name,
        email: email,
        body: body,
      );
}

extension CommentUpdateItemMapper on CommentResponse {
  CommentItem get asDomainEntity => CommentItem(
        id: id,
        postID: postID,
        body: body,
        email: email,
        name: name,
      );
}

extension CommentItemFromDBMapper on List<PostDbComment> {
  List<CommentItem> get asDomainFromDB => List.generate(
        length,
        (index) => CommentItem(
          postID: this[index].postID,
          id: this[index].id,
          name: this[index].name,
          email: this[index].email,
          body: this[index].body,
        ),
      );
}
