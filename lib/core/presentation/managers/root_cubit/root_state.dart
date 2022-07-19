part of root_cubit.dart;

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class RootState with _$RootState {
  const factory RootState({
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _RootState;

  const RootState._();

  factory RootState.initial() => const RootState();
}
