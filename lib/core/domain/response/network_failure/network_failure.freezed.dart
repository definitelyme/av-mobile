// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of network_failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  $Res call({String message, bool show});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NoInternetConnectivityCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NoInternetConnectivityCopyWith(_$_NoInternetConnectivity value,
          $Res Function(_$_NoInternetConnectivity) then) =
      __$$_NoInternetConnectivityCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$$_NoInternetConnectivityCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$_NoInternetConnectivityCopyWith<$Res> {
  __$$_NoInternetConnectivityCopyWithImpl(_$_NoInternetConnectivity _value,
      $Res Function(_$_NoInternetConnectivity) _then)
      : super(_value, (v) => _then(v as _$_NoInternetConnectivity));

  @override
  _$_NoInternetConnectivity get _value =>
      super._value as _$_NoInternetConnectivity;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_$_NoInternetConnectivity(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnectivity extends _NoInternetConnectivity {
  const _$_NoInternetConnectivity(
      {this.message = NetworkFailure._OFFLINE_MSG, this.show = true})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.notConnected(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetConnectivity &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$_NoInternetConnectivityCopyWith<_$_NoInternetConnectivity> get copyWith =>
      __$$_NoInternetConnectivityCopyWithImpl<_$_NoInternetConnectivity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return notConnected(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return notConnected?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnectivity extends NetworkFailure {
  const factory _NoInternetConnectivity(
      {final String message, final bool show}) = _$_NoInternetConnectivity;
  const _NoInternetConnectivity._() : super._();

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoInternetConnectivityCopyWith<_$_NoInternetConnectivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PoorInternetConnectionCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_PoorInternetConnectionCopyWith(_$_PoorInternetConnection value,
          $Res Function(_$_PoorInternetConnection) then) =
      __$$_PoorInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$$_PoorInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$_PoorInternetConnectionCopyWith<$Res> {
  __$$_PoorInternetConnectionCopyWithImpl(_$_PoorInternetConnection _value,
      $Res Function(_$_PoorInternetConnection) _then)
      : super(_value, (v) => _then(v as _$_PoorInternetConnection));

  @override
  _$_PoorInternetConnection get _value =>
      super._value as _$_PoorInternetConnection;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_$_PoorInternetConnection(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PoorInternetConnection extends _PoorInternetConnection {
  const _$_PoorInternetConnection(
      {this.message = NetworkFailure._POOR_INTERNET_MSG, this.show = true})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.poorInternet(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoorInternetConnection &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$_PoorInternetConnectionCopyWith<_$_PoorInternetConnection> get copyWith =>
      __$$_PoorInternetConnectionCopyWithImpl<_$_PoorInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return poorInternet(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return poorInternet?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (poorInternet != null) {
      return poorInternet(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return poorInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return poorInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (poorInternet != null) {
      return poorInternet(this);
    }
    return orElse();
  }
}

abstract class _PoorInternetConnection extends NetworkFailure {
  const factory _PoorInternetConnection(
      {final String message, final bool show}) = _$_PoorInternetConnection;
  const _PoorInternetConnection._() : super._();

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PoorInternetConnectionCopyWith<_$_PoorInternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailureReceiveTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureReceiveTimeoutCopyWith(
          _$_NetworkFailureReceiveTimeout value,
          $Res Function(_$_NetworkFailureReceiveTimeout) then) =
      __$$_NetworkFailureReceiveTimeoutCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$$_NetworkFailureReceiveTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$_NetworkFailureReceiveTimeoutCopyWith<$Res> {
  __$$_NetworkFailureReceiveTimeoutCopyWithImpl(
      _$_NetworkFailureReceiveTimeout _value,
      $Res Function(_$_NetworkFailureReceiveTimeout) _then)
      : super(_value, (v) => _then(v as _$_NetworkFailureReceiveTimeout));

  @override
  _$_NetworkFailureReceiveTimeout get _value =>
      super._value as _$_NetworkFailureReceiveTimeout;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_$_NetworkFailureReceiveTimeout(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureReceiveTimeout extends _NetworkFailureReceiveTimeout {
  const _$_NetworkFailureReceiveTimeout(
      {this.message = NetworkFailure._RECEIVE_TIMEOUT_MSG, this.show = true})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.receiveTimeout(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailureReceiveTimeout &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkFailureReceiveTimeoutCopyWith<_$_NetworkFailureReceiveTimeout>
      get copyWith => __$$_NetworkFailureReceiveTimeoutCopyWithImpl<
          _$_NetworkFailureReceiveTimeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return receiveTimeout(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return receiveTimeout?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailureReceiveTimeout extends NetworkFailure {
  const factory _NetworkFailureReceiveTimeout(
      {final String message,
      final bool show}) = _$_NetworkFailureReceiveTimeout;
  const _NetworkFailureReceiveTimeout._() : super._();

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailureReceiveTimeoutCopyWith<_$_NetworkFailureReceiveTimeout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailureTimeoutCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureTimeoutCopyWith(_$_NetworkFailureTimeout value,
          $Res Function(_$_NetworkFailureTimeout) then) =
      __$$_NetworkFailureTimeoutCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool show});
}

/// @nodoc
class __$$_NetworkFailureTimeoutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$_NetworkFailureTimeoutCopyWith<$Res> {
  __$$_NetworkFailureTimeoutCopyWithImpl(_$_NetworkFailureTimeout _value,
      $Res Function(_$_NetworkFailureTimeout) _then)
      : super(_value, (v) => _then(v as _$_NetworkFailureTimeout));

  @override
  _$_NetworkFailureTimeout get _value =>
      super._value as _$_NetworkFailureTimeout;

  @override
  $Res call({
    Object? message = freezed,
    Object? show = freezed,
  }) {
    return _then(_$_NetworkFailureTimeout(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkFailureTimeout extends _NetworkFailureTimeout {
  const _$_NetworkFailureTimeout(
      {this.message = NetworkFailure._CONNECT_TIMEOUT_MSG, this.show = true})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.timeout(message: $message, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailureTimeout &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkFailureTimeoutCopyWith<_$_NetworkFailureTimeout> get copyWith =>
      __$$_NetworkFailureTimeoutCopyWithImpl<_$_NetworkFailureTimeout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool show) notConnected,
    required TResult Function(String message, bool show) poorInternet,
    required TResult Function(String message, bool show) receiveTimeout,
    required TResult Function(String message, bool show) timeout,
  }) {
    return timeout(message, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
  }) {
    return timeout?.call(message, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool show)? notConnected,
    TResult Function(String message, bool show)? poorInternet,
    TResult Function(String message, bool show)? receiveTimeout,
    TResult Function(String message, bool show)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value) poorInternet,
    required TResult Function(_NetworkFailureReceiveTimeout value)
        receiveTimeout,
    required TResult Function(_NetworkFailureTimeout value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternet,
    TResult Function(_NetworkFailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_NetworkFailureTimeout value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailureTimeout extends NetworkFailure {
  const factory _NetworkFailureTimeout(
      {final String message, final bool show}) = _$_NetworkFailureTimeout;
  const _NetworkFailureTimeout._() : super._();

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailureTimeoutCopyWith<_$_NetworkFailureTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
