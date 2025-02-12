import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/pages/decrypt/decrypt_ca.dart';

class DecryptPage extends HookConsumerWidget {
  static String name = "decrypt";

  const DecryptPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    return Scaffold(
      appBar: PageWindowTitleBar(
        title: Text("mitm配置"),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Scrollbar(
        controller: controller,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1366),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(scrollbars: false),
              child: ListView(
                controller: controller,
                children: [
                  DecryptCa(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
