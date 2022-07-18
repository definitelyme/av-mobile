part of bottom_navigation_cubit.dart;

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BottomNavigationState with _$BottomNavigationState {
  static const homeIndex = 0;
  static const Set<Map<String, Widget>> tabs = {
    {'${util.HomePage.name}': HomePage()},
    {'${util.LivePage.name}': LivePage()},
    {'${util.SellPage.name}': SellPage()},
    // {'${util.ChatPage.name}': ChatPage()},
    {'${util.MorePage.name}': MorePage()},
  };

  const factory BottomNavigationState({
    TabsRouter? tabRouter,
    @Default(BottomNavigationState.homeIndex) int currentIndex,
    @Default(BottomNavigationState.homeIndex) int previousIndex,
    @Default(false) bool hasActiveListener,
  }) = _BottomNavigationState;

  factory BottomNavigationState.initial() => const BottomNavigationState();
}
