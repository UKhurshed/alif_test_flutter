part of 'app_settings_cubit.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const AppSettingsState._();

  const factory AppSettingsState._internal({
    required AppLanguage appLanguage,
  }) = _AppSettingsState;

  factory AppSettingsState.initial() => const AppSettingsState._internal(
        appLanguage: AppLanguage.ru,
      );

  Locale get locale {
    final localeCode = appLanguage.locale;
    return Locale(localeCode, localeCode.toUpperCase());
  }
}

enum AppLanguage {
  ru('ru'),
  en('en');

  final String locale;

  const AppLanguage(this.locale);

  static AppLanguage byValue(String value) => values.firstWhere(
        (e) => e.locale == value,
        orElse: () => AppLanguage.ru,
      );
}
