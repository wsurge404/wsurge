import 'package:wsurge/gen/translations.g.dart';

enum Region {
  en("en"),
  cn("zh"),
  other("en");
  final String language;
  const Region(this.language);

  String present(TranslationsEn t) => switch (this) {
        cn => t.settings.general.regions.cn,
        en => t.settings.general.regions.en,
        other => t.settings.general.regions.other,
      };
}
