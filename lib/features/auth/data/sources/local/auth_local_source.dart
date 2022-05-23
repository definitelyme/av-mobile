library auth_local_source.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/auth/data/models/token_response/token_response.dart';
import 'package:auctionvillage/features/auth/data/repositories/repos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthLocalDatasource {
  final AccessTokenManager _manager;
  final HiveClient _hiveClient;

  static const _$authenticated = '_authenticated_';

  AuthLocalDatasource(this._manager, this._hiveClient);

  Future<void> cacheAuthenticatedUser(UserDTO user) async => await _hiveClient.userDTOBox.put(_$authenticated, user);

  Future<Option<UserDTO?>> getUser() async {
    final _result = _hiveClient.userDTOBox.get(_$authenticated);

    return optionOf(_result);
  }

  Future<void> cacheUserAccessToken(dynamic response) async {
    final json = response as Map<String, dynamic>;

    if (json.containsKey('_meta')) {
      await _manager.save(response: TokenResponse.fromJson(json['_meta'] as Map<String, dynamic>));
    } else {
      await _manager.save(response: TokenResponse.fromJson(response));
    }
  }

  Future<void> signOut({bool clearUser = true, bool clearAccessToken = true}) async {
    if (clearUser) await _hiveClient.userDTOBox.clear();

    if (clearAccessToken) await _manager.delete();
  }
}
