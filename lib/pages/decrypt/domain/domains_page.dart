import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/pages/decrypt/domain/domain_table_body_section.dart';
import 'package:wsurge/pages/decrypt/domain/domain_table_header_section.dart';
import 'package:wsurge/pages/decrypt/domain/domains_add_section.dart';

class DomainsPage extends HookConsumerWidget {
  static String name = "domain";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PageWindowTitleBar(
        title: Text("域名管理"),
        leading: BackButton(),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body:NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: MultiSliver(
                children: [
                  DomainsAddSection(),
                  DomainTableHeaderSection(),
                ],
              ),
            ),
          ];
        },
        body: DomainTableBodySection(),
      ));
    ;
  }

}
