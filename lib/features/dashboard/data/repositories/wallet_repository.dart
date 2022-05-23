library wallet_repository.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/local/wallet/wallet_local.dart';
import 'package:auctionvillage/features/dashboard/data/models/user_wallet/debit_card/debit_card_dto.dataclass.dart';
import 'package:auctionvillage/features/dashboard/data/remote/wallet_remote/wallet_remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kt_dart/collection.dart';

@injectable
class WalletRepository extends BaseRepository {
  @override
  final InternetConnectionChecker connectionChecker;

  @override
  final Connectivity connectivity;

  final WalletRemote _remote;
  final WalletLocal _local;

  WalletRepository(this.connectionChecker, this.connectivity, this._remote, this._local);

  Stream<DebitCard?> watch() async* {
    yield* _local.watch().transform(StreamTransformer.fromHandlers(handleData: (data, sink) => sink.add(data?.domain)));
  }

  Future<AppHttpResponse> addDebitCard(DebitCard card) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          final dto = DebitCardDTO.fromDomain(card).data;
          final response = await _remote.addCard('${card.id.value}', dto.copyWith(uid: null));
          // Store card locally
          await _local.addCard(card.id.value!, dto);

          return AppHttpResponse.successful(response.message, pop: true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse?> fundWallet(double amount) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          await _remote.fundWallet('$amount');
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> withdraw(
    double amount, {
    required String? account,
    required String? bank,
    required String? pin,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          await _remote.withdraw('$amount', accountNumber: account, bank: bank, withdrawalPin: pin);
          return AppHttpResponse.successful('You have successfully withdrawn', pop: true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, DebitCard>> getCard({DebitCard? card, bool? local}) async {
    final _fetchLocal = local ?? true;

    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          // Fetch from local first, then if null, fetch from remote
          DebitCardDTO? _result;
          if (_fetchLocal) _result = await _local.getDebitCard(card?.id.value);
          _result ??= await _remote.getDebitCard();

          await _local.addCard('${_result.data.uid}', _result.data);

          print('STORED ID ==> ${_result.data.uid}');

          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> setupPin(String pin, SecurityQuestion question, {String? answer}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          await question.when(
            favPlace: () async => await _remote.setupPin(pin, favPlace: answer),
            favAthlete: () async => await _remote.setupPin(pin, favAthlete: answer),
            locality: () async => await _remote.setupPin(pin, locality: answer),
          );
          return AppHttpResponse.successful('Pin setup successfully!');
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> forgotSecurityAnswer([bool? pop]) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          final result = await _remote.forgotSecurityAnswer();
          return AppHttpResponse.successful(result.message, pop: pop ?? true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> confirmSecurityAnswer(SecurityQuestion question, {String? answer}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          final result = await question.when(
            favPlace: () async => await _remote.confirmSecurityAnswer(favPlace: answer),
            favAthlete: () async => await _remote.confirmSecurityAnswer(favAthlete: answer),
            locality: () async => await _remote.confirmSecurityAnswer(locality: answer),
          );
          return AppHttpResponse.info(result.message, true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> resetWithdrawalPin(String pin) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          final result = await _remote.resetWithdrawalPin(pin);
          return AppHttpResponse.successful(result.message, pop: true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BankAccount?>> verifyBankAccount(String? accountNumber, Bank? bank) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          assert(bank != null && accountNumber != null);
          final result = await _remote.resolveBankAccount('$accountNumber', '${bank?.code.getOrNull}');
          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<Bank>>> getBanks() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          final result = await _remote.banks();

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, UserWallet>> getWallet() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          final result = await _remote.userWallet();

          return right(result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }
}
