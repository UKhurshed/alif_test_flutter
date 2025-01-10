import 'package:database/database.dart';
import 'package:drift/drift.dart';

class PostDbComments extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get postID => integer().references(UserDBPosts, #id)();

  TextColumn get name => text()();

  TextColumn get email => text()();

  TextColumn get body => text()();
}
