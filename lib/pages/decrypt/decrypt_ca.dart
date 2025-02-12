import 'dart:io';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wsurge/common/section_card_with_heading.dart';
import 'package:wsurge/core/directories/directories_provider.dart';
import 'package:wsurge/core/mitm/model/mitm_config_entity.dart';
import 'package:wsurge/core/mitm/notifier/mitm_config_notifier.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';
import 'package:wsurge/core/utils/alerts.dart';

class DecryptCa extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var config = ref.watch(mitmConfigNotifierProvider).value;
    var configNotifier = ref.watch(mitmConfigNotifierProvider.notifier);
    var dirs = ref.watch(appDirectoriesProvider).value;
    config = config ??
        MitmConfigEntity.config(
            enable: false, lastUpdate: DateTime.timestamp());
    return SectionCardWithHeading(
      heading: "设置",
      children: [
        SwitchListTile(
            secondary: Icon(Icons.security),
            title: Text("开启MITM"),
            value: config.enable,
            onChanged: (checked) async {
              await configNotifier.save(config!.copyWith(enable: checked));
            }),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("安装证书"),
          // subtitle: Text("安装ca证书"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () async {

            var a = File(
                "${dirs?.workingDir.path}${Platform.pathSeparator}wsurge-ca-cert.cer");
            if(!a.existsSync()){
              CustomToast.error("请先生成根证书").show(context);
              return;
            }
            launchUrl(Uri.file(a.path)).then((value) {
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("重新生成根证书"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () async {
            await ref.watch(mitmOverviewNotifierProvider.notifier).generateCa();
            CustomToast.success("生成成功").show(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.access_alarm),
          title: Text("域名设置"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            GoRouter.of(context).push("/decrypt/domain");
          },
        ),
        ListTile(
          leading: const Icon(FluentIcons.apps_list_detail_24_filled),
          title: Text("重写规则"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            GoRouter.of(context).push("/decrypt/rules");
          },
        ),
      ],
    );
  }

}
