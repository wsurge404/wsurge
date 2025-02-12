import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wsurge/riverpod/genrate.dart';

part 'user.g.dart';

class User {
  int id;
  String name;

  User(this.id, this.name);
}

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  DataGenerate get _data => ref.read(dataGenerateProvider);

  @override
  Stream<User> build() async* {
    yield* _data.watcherUsers().doOnData((it) {
      // print(it);
    });
  }
}
