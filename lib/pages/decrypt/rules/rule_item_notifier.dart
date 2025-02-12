import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/data/mitm_rule_source.dart';
import 'package:wsurge/core/mitm/model/mitm_rule_entity.dart';
import 'package:uuid/uuid.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';

part 'rule_item_notifier.g.dart';

@riverpod
class RuleItemNotifier extends _$RuleItemNotifier with AppLogger {
  Future<MitmRuleEntity> build() async {
    return MitmRuleEntity.config(
        id: const Uuid().v4(),
        enable: true,
        type: MitmRuleType.redirect,
        lastUpdate: DateTime.timestamp());
  }

  MitmRuleSource get _mitmRuleDao => ref.read(mitmRuleDaoProvider).requireValue;
  MitmOverviewNotifier get _mitmOverviewNotifier =>
      ref.read(mitmOverviewNotifierProvider.notifier);
  void setField({
    String? id,
    MitmRuleType? type,
    String? name,
    String? urlRegex,
    String? scriptsPath,
    String? replaceContent,
  }) {
    if (state case AsyncData(:final value)) {
      state = AsyncData(
        value.copyWith(
            type: type ?? value.type,
            name: name ?? value.name,
            urlRegex: urlRegex ?? value.urlRegex,
            scriptsPath: scriptsPath ?? value.scriptsPath,
            replaceContent: replaceContent ?? value.replaceContent),
      );
    }
  }

  Future<void> save() async {
    if (state case AsyncData(:final value)) {
      await _mitmRuleDao.save(value).run();
      await _mitmOverviewNotifier.changeOptions();
    }
  }
}
