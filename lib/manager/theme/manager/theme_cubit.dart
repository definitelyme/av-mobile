import 'package:auctionvillage/utils/utils.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:auctionvillage/manager/theme/theme.dart';

@injectable
class ThemeCubit extends HydratedCubit<AppTheme> {
  static const String _THEME_KEY = '${Const.appName}-style';

  ThemeCubit() : super(AppTheme.light());

  bool get isDarkMode => state.id == DARK_THEME_ID ? true : false;

  /// Toggles Application theme from Light Mode to Dark Mode
  void toggleTheme() {
    emit(state.id == LIGHT_THEME_ID ? AppTheme.dark() : AppTheme.light());
    App.forceAppUpdate();
  }

  @override
  AppTheme fromJson(Map<String, dynamic> json) {
    final type = json[_THEME_KEY] as String;
    switch (type) {
      case LIGHT_THEME_ID:
        return AppTheme.light();
      case DARK_THEME_ID:
        return AppTheme.dark();
      default:
        return AppTheme.light();
    }
  }

  @override
  Map<String, dynamic> toJson(AppTheme state) => {_THEME_KEY: state.id};
}
