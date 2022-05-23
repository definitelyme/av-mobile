library wallet_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/models/user_wallet/bank_account/bank_account.dataclass.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_remote.g.dart';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class WalletRemote {
  @factoryMethod
  factory WalletRemote(AppHttpClient dio) = _WalletRemote;

  @GET(EndPoints.GET_USER_DEBIT_CARD)
  Future<DebitCardDTO> getDebitCard();

  @PUT(EndPoints.ADD_DEBIT_CARD)
  Future<AppHttpResponse> addCard(@Path() String id, @Body() DebitCardDTOData card);

  @POST(EndPoints.FUND_WALLET)
  Future<AppHttpResponse> fundWallet(@Field('amount') String amount);

  @POST(EndPoints.WITHDRAW_WALLET)
  Future<AppHttpResponse> withdraw(
    @Field('amount') String amount, {
    @Field('account_number') required String? accountNumber,
    @Field('account_bank') required String? bank,
    @Field('pin') required String? withdrawalPin,
  });

  @PUT(EndPoints.SETUP_WITHDRAWAL_PIN)
  Future<AppHttpResponse> setupPin(
    @Field('pin') String pin, {
    @Field('favAthlete') String? favAthlete,
    @Field('favPlace') String? favPlace,
    @Field('locality') String? locality,
  });

  @GET(EndPoints.FORGOT_SECURITY_ANSWER)
  Future<AppHttpResponse> forgotSecurityAnswer();

  @POST(EndPoints.CONFIRM_SECURITY_ANSWER)
  Future<AppHttpResponse> confirmSecurityAnswer({
    @Field('favAthlete') String? favAthlete,
    @Field('favPlace') String? favPlace,
    @Field('locality') String? locality,
  });

  @POST(EndPoints.RESET_WITHDRAWAL_PIN)
  Future<AppHttpResponse> resetWithdrawalPin(@Field('otp') String pin);

  @Headers({'Authorization': 'Bearer FLWSECK-8a8dd5afa211ae139db6fcb0039a6984-X'})
  @GET(EndPoints.GET_NG_BANKS_LIST)
  Future<BankDTO> banks();

  @Headers({'Authorization': 'Bearer FLWSECK-8a8dd5afa211ae139db6fcb0039a6984-X', 'Content-Type': 'application/json'})
  @POST(EndPoints.RESOLVE_BANK_ACCOUNT)
  Future<BankAccountDTO> resolveBankAccount(
    @Field('account_number') String accountNumber,
    @Field('account_bank') String bankCode,
  );
}
