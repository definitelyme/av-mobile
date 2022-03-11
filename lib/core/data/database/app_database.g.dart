// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_database.dart;

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDAO? _userDAOInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `users` (`id` TEXT, `token` TEXT, `firstName` TEXT, `lastName` TEXT, `fullName` TEXT, `isPrivate` INTEGER, `email` TEXT, `phone` TEXT, `password` TEXT, `oldPassword` TEXT, `confirmation` TEXT, `avatar` TEXT, `active` INTEGER, `accountVerified` INTEGER, `provider` TEXT, `createdBy` INTEGER, `updatedBy` INTEGER, `deletedBy` INTEGER, `createdAt` INTEGER, `updatedAt` INTEGER, `deletedAt` INTEGER, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDAO get userDAO {
    return _userDAOInstance ??= _$UserDAO(database, changeListener);
  }
}

class _$UserDAO extends UserDAO {
  _$UserDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        __$_UserDTOInsertionAdapter = InsertionAdapter(
            database,
            'users',
            (_$_UserDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'fullName': item.fullName,
                  'isPrivate':
                      item.isPrivate == null ? null : (item.isPrivate! ? 1 : 0),
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'avatar': item.avatar,
                  'active': item.active == null ? null : (item.active! ? 1 : 0),
                  'accountVerified': item.accountVerified == null
                      ? null
                      : (item.accountVerified! ? 1 : 0),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdBy': _timestampFloorConverter.encode(item.createdBy),
                  'updatedBy': _timestampFloorConverter.encode(item.updatedBy),
                  'deletedBy': _timestampFloorConverter.encode(item.deletedBy),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_UserDTOUpdateAdapter = UpdateAdapter(
            database,
            'users',
            ['id'],
            (_$_UserDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'fullName': item.fullName,
                  'isPrivate':
                      item.isPrivate == null ? null : (item.isPrivate! ? 1 : 0),
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'avatar': item.avatar,
                  'active': item.active == null ? null : (item.active! ? 1 : 0),
                  'accountVerified': item.accountVerified == null
                      ? null
                      : (item.accountVerified! ? 1 : 0),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdBy': _timestampFloorConverter.encode(item.createdBy),
                  'updatedBy': _timestampFloorConverter.encode(item.updatedBy),
                  'deletedBy': _timestampFloorConverter.encode(item.deletedBy),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_UserDTODeletionAdapter = DeletionAdapter(
            database,
            'users',
            ['id'],
            (_$_UserDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'fullName': item.fullName,
                  'isPrivate':
                      item.isPrivate == null ? null : (item.isPrivate! ? 1 : 0),
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'avatar': item.avatar,
                  'active': item.active == null ? null : (item.active! ? 1 : 0),
                  'accountVerified': item.accountVerified == null
                      ? null
                      : (item.accountVerified! ? 1 : 0),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdBy': _timestampFloorConverter.encode(item.createdBy),
                  'updatedBy': _timestampFloorConverter.encode(item.updatedBy),
                  'deletedBy': _timestampFloorConverter.encode(item.deletedBy),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<_$_UserDTO> __$_UserDTOInsertionAdapter;

  final UpdateAdapter<_$_UserDTO> __$_UserDTOUpdateAdapter;

  final DeletionAdapter<_$_UserDTO> __$_UserDTODeletionAdapter;

  @override
  Stream<List<_$_UserDTO?>> watchUsers() {
    return _queryAdapter.queryListStream('SELECT * FROM users',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            isPrivate: row['isPrivate'] == null
                ? null
                : (row['isPrivate'] as int) != 0,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            avatar: row['avatar'] as String?,
            active: row['active'] == null ? null : (row['active'] as int) != 0,
            accountVerified: row['accountVerified'] == null
                ? null
                : (row['accountVerified'] as int) != 0,
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdBy:
                _timestampFloorConverter.decode(row['createdBy'] as int?),
            updatedBy:
                _timestampFloorConverter.decode(row['updatedBy'] as int?),
            deletedBy:
                _timestampFloorConverter.decode(row['deletedBy'] as int?),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        queryableName: 'users',
        isView: false);
  }

  @override
  Future<List<_$_UserDTO?>> allUsers() async {
    return _queryAdapter.queryList('SELECT * FROM users',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            isPrivate: row['isPrivate'] == null
                ? null
                : (row['isPrivate'] as int) != 0,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            avatar: row['avatar'] as String?,
            active: row['active'] == null ? null : (row['active'] as int) != 0,
            accountVerified: row['accountVerified'] == null
                ? null
                : (row['accountVerified'] as int) != 0,
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdBy:
                _timestampFloorConverter.decode(row['createdBy'] as int?),
            updatedBy:
                _timestampFloorConverter.decode(row['updatedBy'] as int?),
            deletedBy:
                _timestampFloorConverter.decode(row['deletedBy'] as int?),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<_$_UserDTO?> findUser(int id) async {
    return _queryAdapter.query('SELECT * FROM users WHERE id = ?1',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            isPrivate: row['isPrivate'] == null
                ? null
                : (row['isPrivate'] as int) != 0,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            avatar: row['avatar'] as String?,
            active: row['active'] == null ? null : (row['active'] as int) != 0,
            accountVerified: row['accountVerified'] == null
                ? null
                : (row['accountVerified'] as int) != 0,
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdBy:
                _timestampFloorConverter.decode(row['createdBy'] as int?),
            updatedBy:
                _timestampFloorConverter.decode(row['updatedBy'] as int?),
            deletedBy:
                _timestampFloorConverter.decode(row['deletedBy'] as int?),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        arguments: [id]);
  }

  @override
  Future<void> removeUsers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM users');
  }

  @override
  Future<_$_UserDTO?> lastUser() async {
    return _queryAdapter.query('SELECT * FROM users ORDER BY ID DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            isPrivate: row['isPrivate'] == null
                ? null
                : (row['isPrivate'] as int) != 0,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            avatar: row['avatar'] as String?,
            active: row['active'] == null ? null : (row['active'] as int) != 0,
            accountVerified: row['accountVerified'] == null
                ? null
                : (row['accountVerified'] as int) != 0,
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdBy:
                _timestampFloorConverter.decode(row['createdBy'] as int?),
            updatedBy:
                _timestampFloorConverter.decode(row['updatedBy'] as int?),
            deletedBy:
                _timestampFloorConverter.decode(row['deletedBy'] as int?),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<void> insertItem(_$_UserDTO item) async {
    await __$_UserDTOInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<List<int>> insertItems(List<_$_UserDTO> items) {
    return __$_UserDTOInsertionAdapter.insertListAndReturnIds(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(_$_UserDTO item) async {
    await __$_UserDTOUpdateAdapter.update(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> removeItem(_$_UserDTO item) async {
    await __$_UserDTODeletionAdapter.delete(item);
  }
}

// ignore_for_file: unused_element
final _timestampFloorConverter = TimestampFloorConverter();
final _countryDTOFloorConverter = CountryDTOFloorConverter();
final _authProviderFloorConverter = AuthProviderFloorConverter();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['_id'] as String?,
      token: json['Token'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String?,
      isPrivate: const BooleanSerializer().fromJson(json['IsPrivate']),
      email: json['Email'] as String?,
      phone: json['mobile'] as String?,
      password: json['Password'] as String?,
      oldPassword: json['current_password'] as String?,
      confirmation: json['password_confirmation'] as String?,
      avatar: json['Avatar'] as String?,
      active: const BooleanSerializer().fromJson(json['Active']),
      accountVerified:
          const BooleanSerializer().fromJson(json['AccountVerified']),
      provider:
          const AuthProviderSerializer().fromJson(json['Provider'] as String?),
      createdBy:
          const TimestampConverter().fromJson(json['CreatedBy'] as String?),
      updatedBy:
          const TimestampConverter().fromJson(json['UpdatedBy'] as String?),
      deletedBy:
          const TimestampConverter().fromJson(json['DeletedBy'] as String?),
      createdAt:
          const TimestampConverter().fromJson(json['CreatedAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['UpdatedAt'] as String?),
      deletedAt:
          const TimestampConverter().fromJson(json['DeletedAt'] as String?),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('Token', instance.token);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('fullName', instance.fullName);
  writeNotNull(
      'IsPrivate', const BooleanSerializer().toJson(instance.isPrivate));
  writeNotNull('Email', instance.email);
  writeNotNull('mobile', instance.phone);
  writeNotNull('Password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('password_confirmation', instance.confirmation);
  writeNotNull('Avatar', instance.avatar);
  writeNotNull('Active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('AccountVerified',
      const BooleanSerializer().toJson(instance.accountVerified));
  writeNotNull(
      'Provider', const AuthProviderSerializer().toJson(instance.provider));
  writeNotNull(
      'CreatedBy', const TimestampConverter().toJson(instance.createdBy));
  writeNotNull(
      'UpdatedBy', const TimestampConverter().toJson(instance.updatedBy));
  writeNotNull(
      'DeletedBy', const TimestampConverter().toJson(instance.deletedBy));
  writeNotNull(
      'CreatedAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'UpdatedAt', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'DeletedAt', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}

_$_UserListDTO _$$_UserListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserListDTO(
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['Meta'] == null
          ? null
          : MetaDTO.fromJson(json['Meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserListDTOToJson(_$_UserListDTO instance) {
  final val = <String, dynamic>{
    'Data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Meta', instance.meta?.toJson());
  return val;
}
