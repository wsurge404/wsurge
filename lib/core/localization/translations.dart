import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/localization/locale_preferences.dart';
import 'package:wsurge/gen/translations.g.dart';


part 'translations.g.dart';

@Riverpod(keepAlive: true)
TranslationsEn translations(Ref ref) =>
    ref.watch(localePreferencesProvider).build();
