library user;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
@immutable
class User extends BaseEntity with _$User {
  const User._();

  const factory User({
    required UniqueId<String?> id,
    required DisplayName firstName,
    required DisplayName lastName,
    DisplayName? name,
    required EmailAddress email,
    required Phone phone,
    required Password password,
    required MediaField photo,
    Country? country,
    @Default(false) bool isPrivate,
    @Default(AuthProvider.regular) AuthProvider provider,
    @Default(false) bool? active,
    @Default(false) bool? accountVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  DisplayName get fullName {
    return name?.getOrNull != null
        ? name!
        : lastName.getOrNull?.let((it) => DisplayName('${firstName.getOrEmpty} $it')) ?? DisplayName('${firstName.getOrEmpty}');
  }

  String? get sharelink => fullName.isValid ? 'AmatNow.com/${fullName.getOrEmpty?.toLowerCase().trimWhiteSpaces()}' : null;

  bool get isEmptyObj => this == User.blank();

  factory User.blank({
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    Phone? phone,
    Password? password,
    Password? confirmation,
  }) =>
      User(
        id: UniqueId.fromExternal(null),
        firstName: firstName ?? DisplayName(null),
        lastName: lastName ?? DisplayName(null),
        email: email ?? EmailAddress(null),
        phone: phone ?? Phone(null),
        photo: MediaField(null),
        password: password ?? Password(null),
      );

  Option<FieldObjectException<dynamic>> get signup => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(email.mapped)
      .andThen(password.mapped)
      .andThen(phone.mapped)
      .fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get login => email.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get reset => phone.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get profile =>
      firstName.mapped.andThen(lastName.mapped).andThen(email.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get socials =>
      firstName.mapped.andThen(lastName.mapped).andThen(phone.mapped).fold((f) => some(f), (_) => none());
}
