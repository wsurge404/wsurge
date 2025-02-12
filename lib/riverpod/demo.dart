import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/riverpod/genrate.dart';

import 'user.dart';

main() {
  runApp(ProviderScope(
      child: MaterialApp(
    home: _AppHomeState(),
  )));
}

// class AppHome extends StatefulWidget {
//   const AppHome({super.key});
//
//   @override
//   State<AppHome> createState() => _AppHomeState();
// }

class _AppHomeState extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userNotifierProvider);
    var dg = ref.watch(dataGenerateProvider);
    return Scaffold(
      body: ListView(
        children: [
          IconButton(
              onPressed: () async {
                await dg.init();
              },
              icon: Icon(Icons.access_alarm)),
          switch (user) {
            AsyncData(:final value) => Text('Activity: ${value.id}'),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => const CircularProgressIndicator(),
          }
        ],
      ),
    );
  }
}
