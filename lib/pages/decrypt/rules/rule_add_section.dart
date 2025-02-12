import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/mitm/model/mitm_rule_entity.dart';
import 'package:wsurge/core/utils/alerts.dart';
import 'package:wsurge/pages/decrypt/rules/rule_item_notifier.dart';
import 'package:wsurge/utils/custom_text_form_field.dart';
import 'package:wsurge/utils/customer_model.dart';

class RuleAddSection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(ruleItemNotifierProvider.notifier);
    final provider = ref.watch(ruleItemNotifierProvider);
    return SliverPinnedHeader(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(children: [
            const Expanded(child: SizedBox()),
            FilledButton.icon(
                icon: const Icon(Icons.add, size: 14),
                onPressed: () {
                  showModal(
                      context,
                      (context) => addModal(context, () {
                            notifier.save();
                            Navigator.of(context).pop();
                            CustomToast.success("保存成功").show(context);
                          }, provider, notifier));
                },
                label: Text("新增", style: const TextStyle(fontSize: 12))),
            const SizedBox(width: 5),
          ]),
        ),
      ),
    );
  }

  List<WoltModalSheetPage> addModal(BuildContext context, Function() onSave,
      AsyncValue<MitmRuleEntity> provider, RuleItemNotifier notifier) {
    var title = Text("添加重写规则", style: Theme.of(context).textTheme.titleSmall);
    return [
      sheetPage(context, MediaQuery.of(context).size.height * 0.5, title,
          buildBody(provider, context, notifier), buildFooter(context, onSave))
    ];
  }

  Widget buildFooter(BuildContext context, Function() onSave) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilledButton(
            onPressed: Navigator.of(context).pop,
            child: Center(child: Text('关闭')),
          ),
          const Gap(20),
          FilledButton(
            onPressed: onSave,
            child: Center(child: Text('保存')),
          ),
        ],
      ),
    );
  }

  Widget buildBody(AsyncValue<MitmRuleEntity> provider, BuildContext context,
      RuleItemNotifier notifier) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(36),
      borderSide: BorderSide.none,
    );
    return CustomScrollView(slivers: [
      Form(
        autovalidateMode: AutovalidateMode.always,
        child: SliverList.list(
          children: [
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: DropdownButtonFormField<String>(
                value: provider.value?.type.name,
                decoration: InputDecoration(
                  isDense: true,
                  label: Text("规则类型"),
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  constraints: const BoxConstraints(maxHeight: 56),
                  border: border,
                  enabledBorder: border,
                  errorBorder: border,
                  focusedBorder: border,
                  focusedErrorBorder: border,
                ),
                items: MitmRuleType.values
                    .map((option) => DropdownMenuItem(
                          value: option.name,
                          child: Text(option.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    notifier.setField(type: MitmRuleType.getByName(value));
                  }
                  // setState(() {
                  //   _selectedValue = value!;
                  // });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: CustomTextFormField(
                initialValue: "",
                onChanged: (value) => notifier.setField(urlRegex: value),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length == 0) {
                    return "请输入匹配url";
                  }
                  return null;
                },
                label: "匹配url",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: CustomTextFormField(
                initialValue: "",
                onChanged: (value) => notifier.setField(replaceContent: value),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length == 0) {
                    return "请输入执行脚本";
                  }
                  return null;
                },
                label: "执行脚本",
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
