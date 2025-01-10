import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/screens/users/cubit/app_settings/app_settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/gen/assets.gen.dart';

Future<void> showLanguageModalSheet(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    builder: (context) {
      final s = S.of(context);
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(s.chooseLanguage),
              const SizedBox(height: 16),
              BlocBuilder<AppSettingsCubit, AppSettingsState>(
                builder: (context, state) {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final bool isSelected = state.appLanguage.index ==
                          AppLanguage.values[index].index;
                      return InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          context
                              .read<AppSettingsCubit>()
                              .setLanguage(AppLanguage.values[index].locale);
                        },
                        child: LanguageItem(
                          title: index == 0 ? s.russian : s.english, //Тоҷикӣ
                          icon: index == 0 ? Assets.icons.ru : Assets.icons.us,
                          isSelected: isSelected,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: AppLanguage.values.length,
                  );
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

class LanguageItem extends StatelessWidget {
  const LanguageItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
  });

  final String title;
  final SvgGenImage icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).primaryColor.withOpacity(0.85)
            : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: icon.svg(height: 23, width: 23),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: isSelected ? Colors.white : Colors.black),
        ),
        trailing: isSelected
            ? const Icon(
                Icons.verified,
                color: Colors.lightGreenAccent,
              )
            : null,
      ),
    );
  }
}
