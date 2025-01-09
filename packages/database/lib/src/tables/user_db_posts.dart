import 'package:drift/drift.dart';

class UserDBPosts extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get userID => integer()();

  TextColumn get title => text()();

  TextColumn get body => text()();
}