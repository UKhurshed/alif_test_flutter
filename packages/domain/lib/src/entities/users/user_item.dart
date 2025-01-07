import 'package:equatable/equatable.dart';

class UserItem extends Equatable {
  final int id;
  final String name;
  final String userName;
  final String email;
  final UserAddress address;
  final String phone;
  final String website;
  final String companyName;

  const UserItem({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.companyName,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        userName,
        email,
        address,
        phone,
        website,
        companyName,
      ];
}

class UserAddress extends Equatable {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;

  const UserAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.lat,
    required this.lng,
  });

  @override
  List<Object?> get props => [
        street,
        suite,
        city,
        zipcode,
        lat,
        lng,
      ];
}
