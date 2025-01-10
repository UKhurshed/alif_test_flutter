import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';

extension UserPostsMapper on List<UserPostResponse> {
  List<UserPost> get asDomainEntity => List.generate(
        length,
        (index) => UserPost(
          userID: this[index].userID,
          id: this[index].id,
          title: this[index].title,
          body: this[index].body,
        ),
      );
}

extension UserPostsDBMapper on List<UserDBPost> {
  List<UserPost> get asDomainFromDB => List.generate(
        length,
        (index) => UserPost(
          userID: this[index].userID,
          id: this[index].id,
          title: this[index].title,
          body: this[index].body,
        ),
      );
}
