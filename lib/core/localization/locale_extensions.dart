import 'dart:io';

import 'package:wsurge/gen/fonts.gen.dart';
import 'package:wsurge/gen/translations.g.dart';


extension AppLocaleX on AppLocale {
  String get preferredFontFamily => this == AppLocale.zhCn ? FontFamily.alibabaPuHuiTi : (!Platform.isWindows ? "" : FontFamily.emoji);

  String get localeName => switch (flutterLocale.toString()) {
        "en" => "English",
        "fa" => "فارسی",
        "ar" => "العربية",
        "ckb-KUR" => "کوردی سۆرانی",
        "ru" => "Русский",
        "zh" || "zh_CN" => "中文 (中国)",
        "zh_TW" => "中文 (台湾)",
        "tr" => "Türkçe",
        "es" => "Spanish",
        "id" => "Indonesian",
        "hi" => "हिन्दी",
        "pt_BR" => "Portuguese (Brazil)",
        "fr" => "Français",
        _ => "Unknown",
      };
}
