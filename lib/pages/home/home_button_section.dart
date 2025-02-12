// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
// import 'package:wsurge/preferences/provider.dart';
//
// class HomeButtonSection extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   ref
//                       .read(preferProvider.notifier)
//                       .changeMode(ThemeMode.system);
//                 },
//                 child: const Text("system")),
//             ElevatedButton(
//                 onPressed: () {
//                   ref.read(preferProvider.notifier).changeMode(ThemeMode.dark);
//                 },
//                 child: Text("dart")),
//             ElevatedButton(
//                 onPressed: () async {
//                   var a = ref.watch(connectionNotifierProvider).value;
//                   // ref.read(preferProvider.notifier).changeMode(ThemeMode.light);
//                 },
//                 child: Text("light")),
//             ElevatedButton(
//                 onPressed: () async {
//                   await ref
//                       .read(connectionNotifierProvider.notifier)
//                       .toggleConnection();
//                 },
//                 child: Text("启动")),
//             ElevatedButton(
//                 onPressed: () async {
//                   await ref
//                       .read(connectionNotifierProvider.notifier)
//                       .abortConnection();
//                 },
//                 child: Text("停止")),
//           ],
//         ),
//       ],
//     );
//   }
// }
