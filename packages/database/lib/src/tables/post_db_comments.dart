import 'package:drift/drift.dart';

class PostDbComments extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get postID => integer()();

  TextColumn get name => text()();

  TextColumn get email => text()();

  TextColumn get body => text()();
}