import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:wsurge/core/mitm/model/mitm_host_entity.dart';
import 'package:wsurge/core/mitm/notifier/mitm_host_notifier.dart';
import 'package:wsurge/core/utils/alerts.dart';
import 'package:wsurge/utils/custom_text_form_field.dart';
import 'package:wsurge/utils/customer_model.dart';

class DomainsAddSection extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notifier = ref.watch(mitmHostNotifierProvider.notifier);
    var value = useState("");
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
                          (context) => addModal(
                          context, (v) => value.value = v, () {
                        if (value.value.isEmpty) {
                          CustomToast.error("请输入域名")
                              .show(context);
                          return;
                        }
                        notifier.save(MitmHostEntity.host(
                            hostname: value.value,
                            enable: true));
                        Navigator.of(context).pop();
                        CustomToast.success("保存成功")
                            .show(context);
                      }));
                },
                label: Text("新增",
                    style: const TextStyle(fontSize: 12))),
            const SizedBox(width: 5),
          ]),
        ),
      ),
    );
  }
  List<WoltModalSheetPage> addModal(
      BuildContext context, Function(String) onChange, Function() onSave) {
    var title = Text("添加域名", style: Theme.of(context).textTheme.titleSmall);
    return [
      sheetPage(
          context,MediaQuery.of(context).size.height*0.2, title, buildBody(onChange), buildFooter(context, onSave))
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

  Widget buildBody(Function(String) onChange) {
    return CustomScrollView(slivers: [
      Form(
        autovalidateMode: AutovalidateMode.always,
        child: SliverList.list(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: CustomTextFormField(
                initialValue: "",
                onChanged: onChange,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length == 0) {
                    return "请输入域名";
                  }
                  return null;
                },
                label: "hostname",
              ),
            ),
          ],
        ),
      )
    ]);
  }
}