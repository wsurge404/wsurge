import 'package:flutter/material.dart';
import 'package:wsurge/core/model/environment.dart';

import 'bootstrap.dart';

main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // final container = ProviderContainer(
  //   overrides: [ environmentProvider.overrideWithValue(Environment.prod)],
  // );
  return lazyBootstrap(widgetsBinding, Environment.prod);
}
