import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'app_settings_state.dart';

part 'app_settings_cubit.freezed.dart';

class AppSettingsCubit extends HydratedCubit<AppSettingsState> {
  AppSettingsCubit() : super(AppSettingsState.initial());

  void setLanguage(String language) {
    emit(state.copyWith(appLanguage: AppLanguage.byValue(language)));
  }

  @override
  AppSettingsState? fromJson(Map<String, dynamic> json) {
    String language = json['language'] as String;
    var appLanguage = AppLanguage.ru;

    if (language == 'en') {
      appLanguage = AppLanguage.en;
    }
    return state.copyWith(appLanguage: appLanguage);
  }

  @override
  Map<String, dynamic>? toJson(AppSettingsState state) {
    return {
      'language': state.appLanguage.name,
    };
  }
}
