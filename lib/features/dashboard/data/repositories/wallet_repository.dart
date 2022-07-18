library wallet_repository.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
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

  WalletRepository(this.connectionChecker, this.connectivity, this._remote);

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

  Future<Either<AppHttpResponse, UserWallet?>> getWallet() async {
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
