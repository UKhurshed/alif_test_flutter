// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserDBItemsTable extends UserDBItems
    with TableInfo<$UserDBItemsTable, UserDBItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDBItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _companyMeta =
      const VerificationMeta('company');
  @override
  late final GeneratedColumn<String> company = GeneratedColumn<String>(
      'company', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _suiteMeta = const VerificationMeta('suite');
  @override
  late final GeneratedColumn<String> suite = GeneratedColumn<String>(
      'suite', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _zipcodeMeta =
      const VerificationMeta('zipcode');
  @override
  late final GeneratedColumn<String> zipcode = GeneratedColumn<String>(
      'zipcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _geoLatMeta = const VerificationMeta('geoLat');
  @override
  late final GeneratedColumn<String> geoLat = GeneratedColumn<String>(
      'geo_lat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _geoLngMeta = const VerificationMeta('geoLng');
  @override
  late final GeneratedColumn<String> geoLng = GeneratedColumn<String>(
      'geo_lng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        userName,
        email,
        phone,
        website,
        company,
        street,
        suite,
        city,
        zipcode,
        geoLat,
        geoLng
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_d_b_items';
  @override
  VerificationContext validateIntegrity(Insertable<UserDBItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    } else if (isInserting) {
      context.missing(_companyMeta);
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    } else if (isInserting) {
      context.missing(_suiteMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode']!, _zipcodeMeta));
    } else if (isInserting) {
      context.missing(_zipcodeMeta);
    }
    if (data.containsKey('geo_lat')) {
      context.handle(_geoLatMeta,
          geoLat.isAcceptableOrUnknown(data['geo_lat']!, _geoLatMeta));
    } else if (isInserting) {
      context.missing(_geoLatMeta);
    }
    if (data.containsKey('geo_lng')) {
      context.handle(_geoLngMeta,
          geoLng.isAcceptableOrUnknown(data['geo_lng']!, _geoLngMeta));
    } else if (isInserting) {
      context.missing(_geoLngMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDBItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserDBItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
      company: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street'])!,
      suite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suite'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      zipcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zipcode'])!,
      geoLat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}geo_lat'])!,
      geoLng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}geo_lng'])!,
    );
  }

  @override
  $UserDBItemsTable createAlias(String alias) {
    return $UserDBItemsTable(attachedDatabase, alias);
  }
}

class UserDBItem extends DataClass implements Insertable<UserDBItem> {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;
  final String company;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String geoLat;
  final String geoLng;
  const UserDBItem(
      {required this.id,
      required this.name,
      required this.userName,
      required this.email,
      required this.phone,
      required this.website,
      required this.company,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geoLat,
      required this.geoLng});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['user_name'] = Variable<String>(userName);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['website'] = Variable<String>(website);
    map['company'] = Variable<String>(company);
    map['street'] = Variable<String>(street);
    map['suite'] = Variable<String>(suite);
    map['city'] = Variable<String>(city);
    map['zipcode'] = Variable<String>(zipcode);
    map['geo_lat'] = Variable<String>(geoLat);
    map['geo_lng'] = Variable<String>(geoLng);
    return map;
  }

  UserDBItemsCompanion toCompanion(bool nullToAbsent) {
    return UserDBItemsCompanion(
      id: Value(id),
      name: Value(name),
      userName: Value(userName),
      email: Value(email),
      phone: Value(phone),
      website: Value(website),
      company: Value(company),
      street: Value(street),
      suite: Value(suite),
      city: Value(city),
      zipcode: Value(zipcode),
      geoLat: Value(geoLat),
      geoLng: Value(geoLng),
    );
  }

  factory UserDBItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDBItem(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      userName: serializer.fromJson<String>(json['userName']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      company: serializer.fromJson<String>(json['company']),
      street: serializer.fromJson<String>(json['street']),
      suite: serializer.fromJson<String>(json['suite']),
      city: serializer.fromJson<String>(json['city']),
      zipcode: serializer.fromJson<String>(json['zipcode']),
      geoLat: serializer.fromJson<String>(json['geoLat']),
      geoLng: serializer.fromJson<String>(json['geoLng']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'userName': serializer.toJson<String>(userName),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'company': serializer.toJson<String>(company),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'city': serializer.toJson<String>(city),
      'zipcode': serializer.toJson<String>(zipcode),
      'geoLat': serializer.toJson<String>(geoLat),
      'geoLng': serializer.toJson<String>(geoLng),
    };
  }

  UserDBItem copyWith(
          {int? id,
          String? name,
          String? userName,
          String? email,
          String? phone,
          String? website,
          String? company,
          String? street,
          String? suite,
          String? city,
          String? zipcode,
          String? geoLat,
          String? geoLng}) =>
      UserDBItem(
        id: id ?? this.id,
        name: name ?? this.name,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        company: company ?? this.company,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        geoLat: geoLat ?? this.geoLat,
        geoLng: geoLng ?? this.geoLng,
      );
  UserDBItem copyWithCompanion(UserDBItemsCompanion data) {
    return UserDBItem(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      userName: data.userName.present ? data.userName.value : this.userName,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      website: data.website.present ? data.website.value : this.website,
      company: data.company.present ? data.company.value : this.company,
      street: data.street.present ? data.street.value : this.street,
      suite: data.suite.present ? data.suite.value : this.suite,
      city: data.city.present ? data.city.value : this.city,
      zipcode: data.zipcode.present ? data.zipcode.value : this.zipcode,
      geoLat: data.geoLat.present ? data.geoLat.value : this.geoLat,
      geoLng: data.geoLng.present ? data.geoLng.value : this.geoLng,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserDBItem(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userName: $userName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('company: $company, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geoLat: $geoLat, ')
          ..write('geoLng: $geoLng')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, userName, email, phone, website,
      company, street, suite, city, zipcode, geoLat, geoLng);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDBItem &&
          other.id == this.id &&
          other.name == this.name &&
          other.userName == this.userName &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.company == this.company &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.geoLat == this.geoLat &&
          other.geoLng == this.geoLng);
}

class UserDBItemsCompanion extends UpdateCompanion<UserDBItem> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> userName;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> website;
  final Value<String> company;
  final Value<String> street;
  final Value<String> suite;
  final Value<String> city;
  final Value<String> zipcode;
  final Value<String> geoLat;
  final Value<String> geoLng;
  const UserDBItemsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.userName = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.company = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.geoLat = const Value.absent(),
    this.geoLng = const Value.absent(),
  });
  UserDBItemsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String userName,
    required String email,
    required String phone,
    required String website,
    required String company,
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required String geoLat,
    required String geoLng,
  })  : name = Value(name),
        userName = Value(userName),
        email = Value(email),
        phone = Value(phone),
        website = Value(website),
        company = Value(company),
        street = Value(street),
        suite = Value(suite),
        city = Value(city),
        zipcode = Value(zipcode),
        geoLat = Value(geoLat),
        geoLng = Value(geoLng);
  static Insertable<UserDBItem> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? userName,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? website,
    Expression<String>? company,
    Expression<String>? street,
    Expression<String>? suite,
    Expression<String>? city,
    Expression<String>? zipcode,
    Expression<String>? geoLat,
    Expression<String>? geoLng,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (userName != null) 'user_name': userName,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (company != null) 'company': company,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (geoLat != null) 'geo_lat': geoLat,
      if (geoLng != null) 'geo_lng': geoLng,
    });
  }

  UserDBItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? userName,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? website,
      Value<String>? company,
      Value<String>? street,
      Value<String>? suite,
      Value<String>? city,
      Value<String>? zipcode,
      Value<String>? geoLat,
      Value<String>? geoLng}) {
    return UserDBItemsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geoLat: geoLat ?? this.geoLat,
      geoLng: geoLng ?? this.geoLng,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String>(zipcode.value);
    }
    if (geoLat.present) {
      map['geo_lat'] = Variable<String>(geoLat.value);
    }
    if (geoLng.present) {
      map['geo_lng'] = Variable<String>(geoLng.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDBItemsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userName: $userName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('company: $company, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geoLat: $geoLat, ')
          ..write('geoLng: $geoLng')
          ..write(')'))
        .toString();
  }
}

class $UserDBPostsTable extends UserDBPosts
    with TableInfo<$UserDBPostsTable, UserDBPost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDBPostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int> userID = GeneratedColumn<int>(
      'user_i_d', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, userID, title, body];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_d_b_posts';
  @override
  VerificationContext validateIntegrity(Insertable<UserDBPost> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDBPost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserDBPost(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_i_d'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
    );
  }

  @override
  $UserDBPostsTable createAlias(String alias) {
    return $UserDBPostsTable(attachedDatabase, alias);
  }
}

class UserDBPost extends DataClass implements Insertable<UserDBPost> {
  final int id;
  final int userID;
  final String title;
  final String body;
  const UserDBPost(
      {required this.id,
      required this.userID,
      required this.title,
      required this.body});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_i_d'] = Variable<int>(userID);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    return map;
  }

  UserDBPostsCompanion toCompanion(bool nullToAbsent) {
    return UserDBPostsCompanion(
      id: Value(id),
      userID: Value(userID),
      title: Value(title),
      body: Value(body),
    );
  }

  factory UserDBPost.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDBPost(
      id: serializer.fromJson<int>(json['id']),
      userID: serializer.fromJson<int>(json['userID']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userID': serializer.toJson<int>(userID),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
    };
  }

  UserDBPost copyWith({int? id, int? userID, String? title, String? body}) =>
      UserDBPost(
        id: id ?? this.id,
        userID: userID ?? this.userID,
        title: title ?? this.title,
        body: body ?? this.body,
      );
  UserDBPost copyWithCompanion(UserDBPostsCompanion data) {
    return UserDBPost(
      id: data.id.present ? data.id.value : this.id,
      userID: data.userID.present ? data.userID.value : this.userID,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserDBPost(')
          ..write('id: $id, ')
          ..write('userID: $userID, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userID, title, body);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDBPost &&
          other.id == this.id &&
          other.userID == this.userID &&
          other.title == this.title &&
          other.body == this.body);
}

class UserDBPostsCompanion extends UpdateCompanion<UserDBPost> {
  final Value<int> id;
  final Value<int> userID;
  final Value<String> title;
  final Value<String> body;
  const UserDBPostsCompanion({
    this.id = const Value.absent(),
    this.userID = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
  });
  UserDBPostsCompanion.insert({
    this.id = const Value.absent(),
    required int userID,
    required String title,
    required String body,
  })  : userID = Value(userID),
        title = Value(title),
        body = Value(body);
  static Insertable<UserDBPost> custom({
    Expression<int>? id,
    Expression<int>? userID,
    Expression<String>? title,
    Expression<String>? body,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userID != null) 'user_i_d': userID,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
    });
  }

  UserDBPostsCompanion copyWith(
      {Value<int>? id,
      Value<int>? userID,
      Value<String>? title,
      Value<String>? body}) {
    return UserDBPostsCompanion(
      id: id ?? this.id,
      userID: userID ?? this.userID,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDBPostsCompanion(')
          ..write('id: $id, ')
          ..write('userID: $userID, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }
}

class $PostDbCommentsTable extends PostDbComments
    with TableInfo<$PostDbCommentsTable, PostDbComment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostDbCommentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _postIDMeta = const VerificationMeta('postID');
  @override
  late final GeneratedColumn<int> postID = GeneratedColumn<int>(
      'post_i_d', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_d_b_posts (id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, postID, name, email, body];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'post_db_comments';
  @override
  VerificationContext validateIntegrity(Insertable<PostDbComment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('post_i_d')) {
      context.handle(_postIDMeta,
          postID.isAcceptableOrUnknown(data['post_i_d']!, _postIDMeta));
    } else if (isInserting) {
      context.missing(_postIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PostDbComment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostDbComment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      postID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}post_i_d'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
    );
  }

  @override
  $PostDbCommentsTable createAlias(String alias) {
    return $PostDbCommentsTable(attachedDatabase, alias);
  }
}

class PostDbComment extends DataClass implements Insertable<PostDbComment> {
  final int id;
  final int postID;
  final String name;
  final String email;
  final String body;
  const PostDbComment(
      {required this.id,
      required this.postID,
      required this.name,
      required this.email,
      required this.body});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['post_i_d'] = Variable<int>(postID);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['body'] = Variable<String>(body);
    return map;
  }

  PostDbCommentsCompanion toCompanion(bool nullToAbsent) {
    return PostDbCommentsCompanion(
      id: Value(id),
      postID: Value(postID),
      name: Value(name),
      email: Value(email),
      body: Value(body),
    );
  }

  factory PostDbComment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostDbComment(
      id: serializer.fromJson<int>(json['id']),
      postID: serializer.fromJson<int>(json['postID']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      body: serializer.fromJson<String>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'postID': serializer.toJson<int>(postID),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'body': serializer.toJson<String>(body),
    };
  }

  PostDbComment copyWith(
          {int? id, int? postID, String? name, String? email, String? body}) =>
      PostDbComment(
        id: id ?? this.id,
        postID: postID ?? this.postID,
        name: name ?? this.name,
        email: email ?? this.email,
        body: body ?? this.body,
      );
  PostDbComment copyWithCompanion(PostDbCommentsCompanion data) {
    return PostDbComment(
      id: data.id.present ? data.id.value : this.id,
      postID: data.postID.present ? data.postID.value : this.postID,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
      body: data.body.present ? data.body.value : this.body,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PostDbComment(')
          ..write('id: $id, ')
          ..write('postID: $postID, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, postID, name, email, body);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostDbComment &&
          other.id == this.id &&
          other.postID == this.postID &&
          other.name == this.name &&
          other.email == this.email &&
          other.body == this.body);
}

class PostDbCommentsCompanion extends UpdateCompanion<PostDbComment> {
  final Value<int> id;
  final Value<int> postID;
  final Value<String> name;
  final Value<String> email;
  final Value<String> body;
  const PostDbCommentsCompanion({
    this.id = const Value.absent(),
    this.postID = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.body = const Value.absent(),
  });
  PostDbCommentsCompanion.insert({
    this.id = const Value.absent(),
    required int postID,
    required String name,
    required String email,
    required String body,
  })  : postID = Value(postID),
        name = Value(name),
        email = Value(email),
        body = Value(body);
  static Insertable<PostDbComment> custom({
    Expression<int>? id,
    Expression<int>? postID,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? body,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (postID != null) 'post_i_d': postID,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (body != null) 'body': body,
    });
  }

  PostDbCommentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? postID,
      Value<String>? name,
      Value<String>? email,
      Value<String>? body}) {
    return PostDbCommentsCompanion(
      id: id ?? this.id,
      postID: postID ?? this.postID,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (postID.present) {
      map['post_i_d'] = Variable<int>(postID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostDbCommentsCompanion(')
          ..write('id: $id, ')
          ..write('postID: $postID, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserDBItemsTable userDBItems = $UserDBItemsTable(this);
  late final $UserDBPostsTable userDBPosts = $UserDBPostsTable(this);
  late final $PostDbCommentsTable postDbComments = $PostDbCommentsTable(this);
  late final UserItemsDao userItemsDao = UserItemsDao(this as AppDatabase);
  late final UserPostsDao userPostsDao = UserPostsDao(this as AppDatabase);
  late final PostCommentsDao postCommentsDao =
      PostCommentsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userDBItems, userDBPosts, postDbComments];
}

typedef $$UserDBItemsTableCreateCompanionBuilder = UserDBItemsCompanion
    Function({
  Value<int> id,
  required String name,
  required String userName,
  required String email,
  required String phone,
  required String website,
  required String company,
  required String street,
  required String suite,
  required String city,
  required String zipcode,
  required String geoLat,
  required String geoLng,
});
typedef $$UserDBItemsTableUpdateCompanionBuilder = UserDBItemsCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> userName,
  Value<String> email,
  Value<String> phone,
  Value<String> website,
  Value<String> company,
  Value<String> street,
  Value<String> suite,
  Value<String> city,
  Value<String> zipcode,
  Value<String> geoLat,
  Value<String> geoLng,
});

class $$UserDBItemsTableFilterComposer
    extends Composer<_$AppDatabase, $UserDBItemsTable> {
  $$UserDBItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get company => $composableBuilder(
      column: $table.company, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get street => $composableBuilder(
      column: $table.street, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get suite => $composableBuilder(
      column: $table.suite, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get zipcode => $composableBuilder(
      column: $table.zipcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get geoLat => $composableBuilder(
      column: $table.geoLat, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get geoLng => $composableBuilder(
      column: $table.geoLng, builder: (column) => ColumnFilters(column));
}

class $$UserDBItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserDBItemsTable> {
  $$UserDBItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get company => $composableBuilder(
      column: $table.company, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get street => $composableBuilder(
      column: $table.street, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get suite => $composableBuilder(
      column: $table.suite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get zipcode => $composableBuilder(
      column: $table.zipcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get geoLat => $composableBuilder(
      column: $table.geoLat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get geoLng => $composableBuilder(
      column: $table.geoLng, builder: (column) => ColumnOrderings(column));
}

class $$UserDBItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserDBItemsTable> {
  $$UserDBItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get userName =>
      $composableBuilder(column: $table.userName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get website =>
      $composableBuilder(column: $table.website, builder: (column) => column);

  GeneratedColumn<String> get company =>
      $composableBuilder(column: $table.company, builder: (column) => column);

  GeneratedColumn<String> get street =>
      $composableBuilder(column: $table.street, builder: (column) => column);

  GeneratedColumn<String> get suite =>
      $composableBuilder(column: $table.suite, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get zipcode =>
      $composableBuilder(column: $table.zipcode, builder: (column) => column);

  GeneratedColumn<String> get geoLat =>
      $composableBuilder(column: $table.geoLat, builder: (column) => column);

  GeneratedColumn<String> get geoLng =>
      $composableBuilder(column: $table.geoLng, builder: (column) => column);
}

class $$UserDBItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserDBItemsTable,
    UserDBItem,
    $$UserDBItemsTableFilterComposer,
    $$UserDBItemsTableOrderingComposer,
    $$UserDBItemsTableAnnotationComposer,
    $$UserDBItemsTableCreateCompanionBuilder,
    $$UserDBItemsTableUpdateCompanionBuilder,
    (UserDBItem, BaseReferences<_$AppDatabase, $UserDBItemsTable, UserDBItem>),
    UserDBItem,
    PrefetchHooks Function()> {
  $$UserDBItemsTableTableManager(_$AppDatabase db, $UserDBItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserDBItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserDBItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserDBItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> userName = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> website = const Value.absent(),
            Value<String> company = const Value.absent(),
            Value<String> street = const Value.absent(),
            Value<String> suite = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> zipcode = const Value.absent(),
            Value<String> geoLat = const Value.absent(),
            Value<String> geoLng = const Value.absent(),
          }) =>
              UserDBItemsCompanion(
            id: id,
            name: name,
            userName: userName,
            email: email,
            phone: phone,
            website: website,
            company: company,
            street: street,
            suite: suite,
            city: city,
            zipcode: zipcode,
            geoLat: geoLat,
            geoLng: geoLng,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String userName,
            required String email,
            required String phone,
            required String website,
            required String company,
            required String street,
            required String suite,
            required String city,
            required String zipcode,
            required String geoLat,
            required String geoLng,
          }) =>
              UserDBItemsCompanion.insert(
            id: id,
            name: name,
            userName: userName,
            email: email,
            phone: phone,
            website: website,
            company: company,
            street: street,
            suite: suite,
            city: city,
            zipcode: zipcode,
            geoLat: geoLat,
            geoLng: geoLng,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserDBItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserDBItemsTable,
    UserDBItem,
    $$UserDBItemsTableFilterComposer,
    $$UserDBItemsTableOrderingComposer,
    $$UserDBItemsTableAnnotationComposer,
    $$UserDBItemsTableCreateCompanionBuilder,
    $$UserDBItemsTableUpdateCompanionBuilder,
    (UserDBItem, BaseReferences<_$AppDatabase, $UserDBItemsTable, UserDBItem>),
    UserDBItem,
    PrefetchHooks Function()>;
typedef $$UserDBPostsTableCreateCompanionBuilder = UserDBPostsCompanion
    Function({
  Value<int> id,
  required int userID,
  required String title,
  required String body,
});
typedef $$UserDBPostsTableUpdateCompanionBuilder = UserDBPostsCompanion
    Function({
  Value<int> id,
  Value<int> userID,
  Value<String> title,
  Value<String> body,
});

final class $$UserDBPostsTableReferences
    extends BaseReferences<_$AppDatabase, $UserDBPostsTable, UserDBPost> {
  $$UserDBPostsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PostDbCommentsTable, List<PostDbComment>>
      _postDbCommentsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.postDbComments,
              aliasName: $_aliasNameGenerator(
                  db.userDBPosts.id, db.postDbComments.postID));

  $$PostDbCommentsTableProcessedTableManager get postDbCommentsRefs {
    final manager = $$PostDbCommentsTableTableManager($_db, $_db.postDbComments)
        .filter((f) => f.postID.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_postDbCommentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserDBPostsTableFilterComposer
    extends Composer<_$AppDatabase, $UserDBPostsTable> {
  $$UserDBPostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userID => $composableBuilder(
      column: $table.userID, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnFilters(column));

  Expression<bool> postDbCommentsRefs(
      Expression<bool> Function($$PostDbCommentsTableFilterComposer f) f) {
    final $$PostDbCommentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.postDbComments,
        getReferencedColumn: (t) => t.postID,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PostDbCommentsTableFilterComposer(
              $db: $db,
              $table: $db.postDbComments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserDBPostsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserDBPostsTable> {
  $$UserDBPostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userID => $composableBuilder(
      column: $table.userID, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnOrderings(column));
}

class $$UserDBPostsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserDBPostsTable> {
  $$UserDBPostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userID =>
      $composableBuilder(column: $table.userID, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  Expression<T> postDbCommentsRefs<T extends Object>(
      Expression<T> Function($$PostDbCommentsTableAnnotationComposer a) f) {
    final $$PostDbCommentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.postDbComments,
        getReferencedColumn: (t) => t.postID,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PostDbCommentsTableAnnotationComposer(
              $db: $db,
              $table: $db.postDbComments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserDBPostsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserDBPostsTable,
    UserDBPost,
    $$UserDBPostsTableFilterComposer,
    $$UserDBPostsTableOrderingComposer,
    $$UserDBPostsTableAnnotationComposer,
    $$UserDBPostsTableCreateCompanionBuilder,
    $$UserDBPostsTableUpdateCompanionBuilder,
    (UserDBPost, $$UserDBPostsTableReferences),
    UserDBPost,
    PrefetchHooks Function({bool postDbCommentsRefs})> {
  $$UserDBPostsTableTableManager(_$AppDatabase db, $UserDBPostsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserDBPostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserDBPostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserDBPostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> userID = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> body = const Value.absent(),
          }) =>
              UserDBPostsCompanion(
            id: id,
            userID: userID,
            title: title,
            body: body,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int userID,
            required String title,
            required String body,
          }) =>
              UserDBPostsCompanion.insert(
            id: id,
            userID: userID,
            title: title,
            body: body,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserDBPostsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({postDbCommentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (postDbCommentsRefs) db.postDbComments
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (postDbCommentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$UserDBPostsTableReferences
                            ._postDbCommentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserDBPostsTableReferences(db, table, p0)
                                .postDbCommentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.postID == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserDBPostsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserDBPostsTable,
    UserDBPost,
    $$UserDBPostsTableFilterComposer,
    $$UserDBPostsTableOrderingComposer,
    $$UserDBPostsTableAnnotationComposer,
    $$UserDBPostsTableCreateCompanionBuilder,
    $$UserDBPostsTableUpdateCompanionBuilder,
    (UserDBPost, $$UserDBPostsTableReferences),
    UserDBPost,
    PrefetchHooks Function({bool postDbCommentsRefs})>;
typedef $$PostDbCommentsTableCreateCompanionBuilder = PostDbCommentsCompanion
    Function({
  Value<int> id,
  required int postID,
  required String name,
  required String email,
  required String body,
});
typedef $$PostDbCommentsTableUpdateCompanionBuilder = PostDbCommentsCompanion
    Function({
  Value<int> id,
  Value<int> postID,
  Value<String> name,
  Value<String> email,
  Value<String> body,
});

final class $$PostDbCommentsTableReferences
    extends BaseReferences<_$AppDatabase, $PostDbCommentsTable, PostDbComment> {
  $$PostDbCommentsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserDBPostsTable _postIDTable(_$AppDatabase db) =>
      db.userDBPosts.createAlias(
          $_aliasNameGenerator(db.postDbComments.postID, db.userDBPosts.id));

  $$UserDBPostsTableProcessedTableManager get postID {
    final manager = $$UserDBPostsTableTableManager($_db, $_db.userDBPosts)
        .filter((f) => f.id($_item.postID));
    final item = $_typedResult.readTableOrNull(_postIDTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PostDbCommentsTableFilterComposer
    extends Composer<_$AppDatabase, $PostDbCommentsTable> {
  $$PostDbCommentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnFilters(column));

  $$UserDBPostsTableFilterComposer get postID {
    final $$UserDBPostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postID,
        referencedTable: $db.userDBPosts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserDBPostsTableFilterComposer(
              $db: $db,
              $table: $db.userDBPosts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PostDbCommentsTableOrderingComposer
    extends Composer<_$AppDatabase, $PostDbCommentsTable> {
  $$PostDbCommentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnOrderings(column));

  $$UserDBPostsTableOrderingComposer get postID {
    final $$UserDBPostsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postID,
        referencedTable: $db.userDBPosts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserDBPostsTableOrderingComposer(
              $db: $db,
              $table: $db.userDBPosts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PostDbCommentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PostDbCommentsTable> {
  $$PostDbCommentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  $$UserDBPostsTableAnnotationComposer get postID {
    final $$UserDBPostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postID,
        referencedTable: $db.userDBPosts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserDBPostsTableAnnotationComposer(
              $db: $db,
              $table: $db.userDBPosts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PostDbCommentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PostDbCommentsTable,
    PostDbComment,
    $$PostDbCommentsTableFilterComposer,
    $$PostDbCommentsTableOrderingComposer,
    $$PostDbCommentsTableAnnotationComposer,
    $$PostDbCommentsTableCreateCompanionBuilder,
    $$PostDbCommentsTableUpdateCompanionBuilder,
    (PostDbComment, $$PostDbCommentsTableReferences),
    PostDbComment,
    PrefetchHooks Function({bool postID})> {
  $$PostDbCommentsTableTableManager(
      _$AppDatabase db, $PostDbCommentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PostDbCommentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PostDbCommentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PostDbCommentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> postID = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> body = const Value.absent(),
          }) =>
              PostDbCommentsCompanion(
            id: id,
            postID: postID,
            name: name,
            email: email,
            body: body,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int postID,
            required String name,
            required String email,
            required String body,
          }) =>
              PostDbCommentsCompanion.insert(
            id: id,
            postID: postID,
            name: name,
            email: email,
            body: body,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PostDbCommentsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({postID = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (postID) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.postID,
                    referencedTable:
                        $$PostDbCommentsTableReferences._postIDTable(db),
                    referencedColumn:
                        $$PostDbCommentsTableReferences._postIDTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PostDbCommentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PostDbCommentsTable,
    PostDbComment,
    $$PostDbCommentsTableFilterComposer,
    $$PostDbCommentsTableOrderingComposer,
    $$PostDbCommentsTableAnnotationComposer,
    $$PostDbCommentsTableCreateCompanionBuilder,
    $$PostDbCommentsTableUpdateCompanionBuilder,
    (PostDbComment, $$PostDbCommentsTableReferences),
    PostDbComment,
    PrefetchHooks Function({bool postID})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserDBItemsTableTableManager get userDBItems =>
      $$UserDBItemsTableTableManager(_db, _db.userDBItems);
  $$UserDBPostsTableTableManager get userDBPosts =>
      $$UserDBPostsTableTableManager(_db, _db.userDBPosts);
  $$PostDbCommentsTableTableManager get postDbComments =>
      $$PostDbCommentsTableTableManager(_db, _db.postDbComments);
}
