import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:win32audio/win32audio.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';
import 'package:wsurge/pages/requests/transition.dart';
import 'dart:typed_data';

class RequestSectionItem extends HookConsumerWidget with AppLogger {
  final String title;
  final List<RequestEntity> requests;

  RequestSectionItem({required this.title, required this.requests});

  String remoteDomain(String url) {
    // if (url.startsWith("/")) {
    try {
      var uri = Uri.parse(url);
      return '${uri.scheme}://${uri.host}${uri.hasPort ? ':${uri.port}' : ''}';
    } catch (e) {
      return "";
    }
    // }
    // return "";
  }

  late ValueNotifier<bool> selected;
  final GlobalKey<ColorTransitionState> transitionState =
      GlobalKey<ColorTransitionState>();

  Widget _hostWidget(
    String title,
    BuildContext context,
  ) {
    var host = GestureDetector(
        child: ListTile(
            minLeadingWidth: 25,
            leading: Icon(
                selected.value ? Icons.arrow_drop_down : Icons.arrow_right,
                size: 18),
            // trailing: trailing,
            dense: true,
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(left: 3, right: 8),
            visualDensity: const VisualDensity(vertical: -3.6),
            title: Text(title,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 14),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            onTap: () {
              selected.value = !selected.value;
            }));

    return ColorTransition(
        key: transitionState,
        duration: const Duration(milliseconds: 1800),
        begin: Theme.of(context).focusColor,
        startAnimation: false,
        child: host);
  }

  Future<Uint8List?> _getWindowsIcon(String path) async {
    return await WinIcons().extractFileIcon(path);
  }
  Widget futureWidget<T>(Future<T> future, Widget Function(T data) toWidget, {bool loading = false}) {
    return FutureBuilder<T>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return toWidget(snapshot.requireData);
        }
        //加载效果
        return loading ? const Center(child: CircularProgressIndicator()) : const SizedBox();
      },
    );
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    selected = useState(false);
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    return Column(children: [
      _hostWidget(title, context),
      Offstage(
          offstage: !selected.value,
          child: Column(
              children: requests.map((it) {
            if (it.processPath == null) {
              return SizedBox();
            }
            var icon = _getWindowsIcon(it.processPath!);
            return futureWidget(icon,(data)=>data == null ? const SizedBox() : Image.memory(data, width: 23, height: 16));
            // return it.processPath == null
            //     ? const SizedBox()
            //     : Image.memory(, width: 23, height: 16);
            // return Image.memory(data, width: 23, height: Platform.isWindows ? 16 : null);
          }).toList()))
    ]);
    ;
  }

// proxyList(AsyncValue<List<RequestEntity>> asyncProxies) {
//   switch (asyncProxies) {
//     case AsyncData(value: final requests):
//       for (var value in requests) {
//         var domain = remoteDomain(value.url);
//         if(domains.containsKey(domain)){
//           domains[domain]?.add(value);
//         }else{
//           domains[domain] =[value];
//         }
//       }
//     case AsyncError(:final error):
//       loggy.error("proxy err:$error");
//     case AsyncLoading():
//       loggy.info("item loading");
//   }
// }
}
