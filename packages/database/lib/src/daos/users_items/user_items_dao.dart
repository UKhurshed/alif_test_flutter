import 'package:database/src/init/app_database.dart';
import 'package:database/src/tables/tables.dart';
import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

part "user_items_dao.g.dart";

@DriftAccessor(tables: [UserDBItems])
class UserItemsDao extends DatabaseAccessor<AppDatabase>
    with _$UserItemsDaoMixin {
  UserItemsDao(super.attachedDatabase);

  //Select operation
  Stream<List<UserDBItem>> get watchUserDBItems => select(userDBItems).watch();

  Future<List<UserDBItem>> getUserDBItems() async {
    return select(userDBItems).get();
  }

  //Insert operations
  Future<void> insertUsers(List<UserItem> users) async {
    List<UserDBItemsCompanion> userDB = [];
    for (final item in users) {
      userDB.add(
        UserDBItemsCompanion(
          id: Value(item.id),
          name: Value(item.name),
          userName: Value(item.userName),
          email: Value(item.email),
          phone: Value(item.phone),
          website: Value(item.website),
          company: Value(item.companyName),
          street: Value(item.address.street),
          suite: Value(item.address.suite),
          city: Value(item.address.city),
          zipcode: Value(item.address.zipcode),
          geoLat: Value(item.address.lat),
          geoLng: Value(item.address.lng),
        ),
      );
    }
    await batch((batch) {
      batch.insertAll(userDBItems, userDB);
    });
  }

  //Delete operations
  Future<int> deleteUserById(int userID) async {
    return await (delete(userDBItems)..where((tbl) => tbl.id.equals(userID)))
        .go();
  }

  Future<int> deleteAllUsers() async {
    return await delete(userDBItems).go();
  }
}
