part of bottom_navigation_cubit.dart;

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BottomNavigationState with _$BottomNavigationState {
  static const Set<Map<String, Widget>> tabs = {
    {'${util.HomePage.name}': HomePage()},
    {'${util.LivePage.name}': LivePage()},
    {'${util.SellPage.name}': SellPage()},
    // {'${util.ChatPage.name}': ChatPage()},
    {'${util.MorePage.name}': MorePage()},
  };
  const factory BottomNavigationState({
    @Default(0) int currentIndex,
    @Default(0) int previousIndex,
  }) = _BottomNavigationState;

  factory BottomNavigationState.initial() => const BottomNavigationState();
}
