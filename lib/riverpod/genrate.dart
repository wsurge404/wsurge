
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/riverpod/user.dart';

part 'genrate.g.dart';

Future<User> _delay(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return User(seconds, "name" + seconds.toString());
}

class DataGenerate {
  int count;
  late Stream<User> users;

  DataGenerate(this.count);

  Stream<User> watcherUsers() => users;

  Future<void> init() async {
    List<Future<User>> futures = [];
    for (int i = 0; i < this.count; i++) {
      futures.add(_delay(i));
    }
    users = Stream.fromFutures(futures);
  }
}

@Riverpod(keepAlive: true)
DataGenerate dataGenerate(Ref ref) {
  return DataGenerate(10);
}
