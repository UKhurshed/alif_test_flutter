import 'package:drift/drift.dart';

//Таблица для хранения информации пользователя
class UserDBItems extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get userName => text()();

  TextColumn get email => text()();

  TextColumn get phone => text()();

  TextColumn get website => text()();

  TextColumn get company => text()();

  TextColumn get street => text()();

  TextColumn get suite => text()();

  TextColumn get city => text()();

  TextColumn get zipcode => text()();

  TextColumn get geoLat => text()();

  TextColumn get geoLng => text()();
}