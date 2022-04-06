library wallet_local.dart;

import 'dart:async';

import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/const.dart';
import 'package:injectable/injectable.dart';
import 'package:localstore/localstore.dart';

@lazySingleton
class WalletLocal {
  static const String collection = Const.kDebitCardsCollection;

  final Localstore _localstore;

  const WalletLocal(this._localstore);

  Future<DebitCardDTO?> getDebitCard([String? id]) async {
    final card = await _localstore.collection(collection).doc(id).get();
    return card != null ? DebitCardDTO.fromJson(card) : null;
  }

  Future<void> addCard(String id, DebitCardDTOData card) async {
    print('PASSED ID ==> $id');
    await _localstore.collection(collection).doc(id).set(card.toJson());
  }

  Stream<DebitCardDTO?> watch() async* {
    yield* _localstore.collection(collection).stream.transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        // final cards = (data as List<dynamic>).map((e) => DebitCardDTO.fromJson(e as Map<String, dynamic>)).toList();
        final cards = data.isEmpty ? null : DebitCardDTO(data: DebitCardDTOData.fromJson(data));
        sink.add(cards);
      },
    ));
  }
}
