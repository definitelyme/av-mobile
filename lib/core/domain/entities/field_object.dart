import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<String>, T?> get value;

  bool compare(T? other) => identical(getOrNull, other) || const DeepCollectionEquality().equals(getOrNull, other);

  Either<FieldObjectException<dynamic>, Unit> get mapped => value.fold((f) => left(f), (_) => right(unit));

  FieldObjectException<dynamic>? get failure => value.fold((f) => f, (_) => null);

  U isNotNull<U>(
    U? Function(FieldObject<T>)? field, {
    required U Function(FieldObject<T>) orElse,
  }) {
    if (getOrNull != null) return field?.call(this) ?? orElse.call(this);
    return orElse.call(this);
  }

  U ensure<U>(
    U? Function(FieldObject<T>)? fiels, {
    required U Function(FieldObject<T>) orElse,
  }) {
    if (getOrNull != null && isValid) return fiels?.call(this) ?? orElse.call(this);
    return orElse.call(this);
  }

  bool get isValid => value.isRight();

  T? get getOrCrash => value.fold((f) {
        log.e('Unexpected Failure '
            '(Field Object Failure: [${value.runtimeType}])');
        throw UnExpectedFailure(message: f.message);
      }, id);

  T? get getOrNull => value.fold((_) => null, id);

  T getExact([T? orElse]) => value.fold((_) => orElse ?? getOrEmpty as T, (i) => i!);

  T? get getOrEmpty {
    return value.fold((_) {
      if (typesEqual<T, int>() || typesEqual<T, int?>()) return -1 as T;
      if (typesEqual<T, double>() || typesEqual<T, double?>()) return 0.0 as T;
      if (typesEqual<T, num>() || typesEqual<T, num?>()) return -1 as T;
      if (typesEqual<T, String>() || typesEqual<T, String?>()) return '' as T;
      if (typesEqual<T, Iterable<dynamic>>() || typesEqual<T, Iterable<dynamic>?>()) return [] as T;
      return null;
    }, id);
  }

  T? get getOrError => value.fold((f) => 'FieldObject<$T>(${f.message})' as T, id);

  FieldObject<T> copyWith(T newValue);

  @override
  bool operator ==(o) {
    return o is FieldObject<T> && const DeepCollectionEquality().equals(getOrNull, o.getOrNull);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'FieldObject<$T>($getOrEmpty)';
}

abstract class StringFieldObject extends FieldObject<String> {
  const StringFieldObject();

  @override
  Either<FieldObjectException<String>, String?> get value;

  @override
  String get getOrEmpty => value.fold((_) => '', (it) => it!);
}
