import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/value_input_tile.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/utils/validators.dart';

class MixPortTile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return ValuePreferenceWidget(
      value: ref.watch(ConfigOptions.mixedPort),
      preferences: ref.watch(ConfigOptions.mixedPort.notifier),
      title: t.config.mixedPort,
      inputToValue: int.tryParse,
      digitsOnly: true,
      validateInput: isPort,
    );
  }
}
