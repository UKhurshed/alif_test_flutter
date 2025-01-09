import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';

extension UserItemMapper on List<UsersResponse> {
  List<UserItem> get asDomainEntity => List.generate(
        length,
        (index) => UserItem(
          id: this[index].id,
          name: this[index].name,
          userName: this[index].userName,
          email: this[index].email,
          address: UserAddress(
            street: this[index].address.street,
            suite: this[index].address.suite,
            city: this[index].address.city,
            zipcode: this[index].address.zipcode,
            lat: this[index].address.geo.lat,
            lng: this[index].address.geo.lng,
          ),
          phone: this[index].phone,
          website: this[index].website,
          companyName: this[index].company.name,
        ),
      );
}

extension UserItemFromDBMapper on List<UserDBItem> {
  List<UserItem> get asDomainFromDB => List.generate(
        length,
        (index) => UserItem(
          id: this[index].id,
          name: this[index].name,
          userName: this[index].userName,
          email: this[index].email,
          address: UserAddress(
            street: this[index].street,
            suite: this[index].suite,
            city: this[index].city,
            zipcode: this[index].zipcode,
            lat: this[index].geoLat,
            lng: this[index].geoLng,
          ),
          phone: this[index].phone,
          website: this[index].website,
          companyName: this[index].company,
        ),
      );
}
